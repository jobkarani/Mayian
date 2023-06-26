// uppy uploader configuration

(function ($) {
    "use strict";

    YEST.requiredData = {
        chosenFiles: [],
        objectChosenFiles: [],
        fileToDeleteId: null,
        allMediaFiles: [],
        multiple: false,
        mediaType: "all",
        next_page_url: null,
        prev_page_url: null,
        csrf: $('meta[name="csrf-token"]').attr("content"),
        appUrl: $('meta[name="app-url"]').attr("content"),
        fileBaseUrl: $('meta[name="file-base-url"]').attr("content"),
    };

    YEST.fileUploader = {
        uppyUploader: function () {
            if ($("#upload-media-files").length > 0) {
                var uppy = new Uppy.Uppy();
                uppy.use(Uppy.Dashboard, {
                    target: "#upload-media-files",
                    inline: true,
                    showLinkToFileUploadResult: false,
                    showProgressDetails: true,
                    hidePauseResumeButton: true,
                    proudlyDisplayPoweredByUppy: false,
                });

                uppy.use(Uppy.ImageEditor, {
                    target: Uppy.Dashboard,
                });

                uppy.use(Uppy.XHRUpload, {
                    endpoint: YEST.requiredData.appUrl + "yest-uploader/upload",
                    fieldName: "uppyMediaFile",
                    formData: true,
                    headers: {
                        "X-CSRF-TOKEN": YEST.requiredData.csrf,
                    },
                });

                uppy.on("upload-success", function () {
                    YEST.fileUploader.getMediaFiles(
                        YEST.requiredData.appUrl +
                            "yest-uploader/get-media-files"
                    );
                });
            }
        },
        getMediaFiles: function (url, searchBy = null, next = false) {
            $(".media-file-uploader-wrapper").html(
                '<div class="align-items-center d-flex h-100 mt-5 justify-content-center w-100"><div class="spinner-grow text-primary" role="status"><span class="visually-hidden"></span></div></div>'
            );
            var params = {};

            params["sort"] = "newest";

            if (searchBy != null && searchBy.length > 0) {
                params["search"] = searchBy;
            }

            $.get(url, params, function (data, status) {
                if (typeof data == "string") {
                    data = JSON.parse(data);
                }
                YEST.fileUploader.acceptedFileType();
                setTimeout(() => {
                    YEST.fileUploader.addSelectedValue();
                }, 300);
                YEST.fileUploader.addHiddenValue();

                if (next == false) {
                    YEST.requiredData.allMediaFiles = data.data;
                } else {
                    YEST.requiredData.allMediaFiles.push(...data.data);
                }

                YEST.fileUploader.updateUploaderFiles();

                if (data.next_page_url != null) {
                    YEST.requiredData.next_page_url = data.next_page_url;
                    setTimeout(() => {
                        $("#load-more").removeClass("d-none");
                    }, 300);
                } else {
                    $("#load-more").addClass("d-none");
                }
            });
        },
        selectFileUpload: function () {
            $(".media-file-select").each(function () {
                var domEl = $(this);
                domEl.on("click", function (e) {
                    var value = $(this).data("value");
                    var valueObject =
                        YEST.requiredData.allMediaFiles[
                            YEST.requiredData.allMediaFiles.findIndex(
                                (x) => x.id === value
                            )
                        ];

                    domEl
                        .closest(".media-file-wrapper")
                        .toggleAttr("data-selected", "true", "false");
                    if (!YEST.requiredData.multiple) {
                        domEl
                            .closest(".media-file-wrapper")
                            .siblings()
                            .attr("data-selected", "false");
                    }
                    if (!YEST.requiredData.chosenFiles.includes(value)) {
                        if (!YEST.requiredData.multiple) {
                            YEST.requiredData.chosenFiles = [];
                            YEST.requiredData.objectChosenFiles = [];
                        }
                        YEST.requiredData.chosenFiles.push(value);
                        YEST.requiredData.objectChosenFiles.push(valueObject);
                    } else {
                        YEST.requiredData.chosenFiles =
                            YEST.requiredData.chosenFiles.filter(function (
                                item
                            ) {
                                return item !== value;
                            });
                        YEST.requiredData.objectChosenFiles =
                            YEST.requiredData.objectChosenFiles.filter(
                                function (item) {
                                    return item !== valueObject;
                                }
                            );
                    }
                    YEST.fileUploader.addSelectedValue();
                    YEST.fileUploader.updateMediaFilesSelected();
                });
            });
        },
        updateCounterDom: function (array) {
            var fileText = "";
            if (array.length > 1) {
                var fileText = YEST.local.files_selected;
            } else {
                var fileText = YEST.local.file_selected;
            }
            return array.length + " " + fileText;
        },
        updateMediaFilesSelected: function () {
            $(".yest-uploader-selected").html(
                YEST.fileUploader.updateCounterDom(
                    YEST.requiredData.chosenFiles
                )
            );
        },
        showSelectedFiles: function () {
            $('[name="yest-show-selected"]').on("change", function () {
                if ($(this).is(":checked")) {
                    YEST.requiredData.allMediaFiles =
                        YEST.requiredData.objectChosenFiles;
                } else {
                    YEST.fileUploader.getMediaFiles(
                        YEST.requiredData.appUrl +
                            "yest-uploader/get-media-files"
                    );
                }
                YEST.fileUploader.updateUploaderFiles();
            });
        },
        searchUploaderFiles: function () {
            $('[name="yest-uploader-search"]').on("keyup", function () {
                var value = $(this).val();
                YEST.fileUploader.getMediaFiles(
                    YEST.requiredData.appUrl + "yest-uploader/get-media-files",
                    value
                );
            });
        },
        addSelectedValue: function () {
            for (var i = 0; i < YEST.requiredData.allMediaFiles.length; i++) {
                if (
                    !YEST.requiredData.chosenFiles.includes(
                        YEST.requiredData.allMediaFiles[i].id
                    )
                ) {
                    YEST.requiredData.allMediaFiles[i].selected = false;
                } else {
                    YEST.requiredData.allMediaFiles[i].selected = true;
                }
            }
        },
        addHiddenValue: function () {
            for (var i = 0; i < YEST.requiredData.allMediaFiles.length; i++) {
                YEST.requiredData.allMediaFiles[i].aria_hidden = false;
            }
        },
        acceptedFileType: function () {
            if (YEST.requiredData.mediaType !== "all") {
                YEST.requiredData.allMediaFiles =
                    YEST.requiredData.allMediaFiles.filter(function (item) {
                        return item.type === YEST.requiredData.mediaType;
                    });
            }
        },
        updateUploaderFiles: function () {
            $(".media-file-uploader-wrapper").html(
                '<div class="align-items-center d-flex mt-5 h-100 justify-content-center w-100"><div class="spinner-grow text-primary" role="status"><span class="visually-hidden"></span></div></div>'
            );

            var data = YEST.requiredData.allMediaFiles;

            setTimeout(function () {
                $(".media-file-uploader-wrapper").html(null);

                if (data.length > 0) {
                    for (var i = 0; i < data.length; i++) {
                        var thumb = "";
                        if (data[i].type === "image") {
                            thumb =
                                '<img src="' +
                                YEST.requiredData.fileBaseUrl +
                                data[i].file_name +
                                '" class="img-fit">';
                        } else {
                            thumb = '<i class="la la-file-text"></i>';
                        }
                        var html =
                            '<div class="media-file-wrapper h-100" aria-hidden="' +
                            data[i].aria_hidden +
                            '" data-selected="' +
                            data[i].selected +
                            '">' +
                            '<div class="yest-file-box">' +
                            '<div class="rounded card-file media-file-select" title="' +
                            data[i].file_original_name +
                            "." +
                            data[i].extension +
                            '" data-value="' +
                            data[i].id +
                            '">' +
                            '<div class="uppy-thumbnail-image rounded">' +
                            thumb +
                            "</div>" +
                            '<div class="card-body">' +
                            '<h6 class="d-flex justify-content-center">' +
                            '<span class="text-truncate title">' +
                            data[i].file_original_name +
                            "</span>" +
                            '<span class="ext flex-shrink-0">.' +
                            data[i].extension +
                            "</span>" +
                            "</h6>" +
                            "</div>" +
                            "</div>" +
                            "</div>" +
                            "</div>";

                        $(".media-file-uploader-wrapper").append(html);
                    }
                } else {
                    $(".media-file-uploader-wrapper").html(
                        '<div class="align-items-center d-flex h-100 justify-content-center w-100 nav-tabs"><div class="text-center"><h3>No files found</h3></div></div>'
                    );
                }
                YEST.fileUploader.selectFileUpload();
                YEST.fileUploader.deleteUploaderFile();
            }, 300);
        },
        generatePreviewForInputBox: function (domEl) {
            domEl.find(".chosen-files").val(YEST.requiredData.chosenFiles);
            domEl.next(".view-file").html(null);

            if (YEST.requiredData.chosenFiles.length > 0) {
                $.post(
                    YEST.requiredData.appUrl +
                        "yest-uploader/get-specific-files",
                    {
                        _token: YEST.requiredData.csrf,
                        ids: YEST.requiredData.chosenFiles.toString(),
                    },
                    function (data) {
                        domEl.next(".view-file").html(null);

                        if (data.length > 0) {
                            domEl
                                .find(".file-amount")
                                .html(YEST.fileUploader.updateCounterDom(data));
                            for (var i = 0; i < data.length; i++) {
                                var thumb = "";
                                if (data[i].type === "image") {
                                    thumb =
                                        '<img src="' +
                                        YEST.requiredData.fileBaseUrl +
                                        data[i].file_name +
                                        '" class="img-fit">';
                                } else {
                                    thumb = '<i class="la la-file-text"></i>';
                                }
                                var html =
                                    '<div class="d-flex justify-content-between align-items-center mt-2 view-file-item" data-id="' +
                                    data[i].id +
                                    '" title="' +
                                    data[i].file_original_name +
                                    "." +
                                    data[i].extension +
                                    '">' +
                                    '<div class="align-items-center align-self-stretch d-flex justify-content-center thumb">' +
                                    thumb +
                                    '<div class="remove">' +
                                    '<button class="btn btn-sm btn-link remove-attachment" type="button">' +
                                    '<i class="la la-close"></i>' +
                                    "</button>" +
                                    "</div>" +
                                    "</div>";

                                domEl.next(".view-file").append(html);
                            }
                        } else {
                            domEl
                                .find(".file-amount")
                                .html(YEST.local.choose_file);
                        }
                    }
                );
            } else {
                domEl.find(".file-amount").html(YEST.local.choose_file);
            }
        },
        closeMediaUploader: function () {
            $("#yesMediaUploaderModal").on("hidden.bs.modal", function () {
                $(".yest-uploader-backdrop").remove();
                $("#yesMediaUploaderModal").remove();
            });
        },
        initUploader: function (
            domEl = null,
            from = "",
            type = "all",
            selectd = "",
            multiple = false,
            callback = null
        ) {
            var domEl = $(domEl);
            var multiple = multiple;
            var type = type;
            var oldSelectedFiles = selectd;
            if (oldSelectedFiles !== "") {
                YEST.requiredData.chosenFiles = oldSelectedFiles
                    .split(",")
                    .map(Number);
            } else {
                YEST.requiredData.chosenFiles = [];
            }
            if ("undefined" !== typeof type && type.length > 0) {
                YEST.requiredData.mediaType = type;
            }
            if (multiple) {
                YEST.requiredData.multiple = true;
            } else {
                YEST.requiredData.multiple = false;
            }

            $.post(
                YEST.requiredData.appUrl + "yest-uploader",
                { _token: YEST.requiredData.csrf },
                function (data) {
                    $("body").append(data);
                    $("#yesMediaUploaderModal").modal("show");
                    YEST.fileUploader.uppyUploader();
                    YEST.fileUploader.getMediaFiles(
                        YEST.requiredData.appUrl +
                            "yest-uploader/get-media-files",
                        null
                    );
                    YEST.fileUploader.updateMediaFilesSelected();
                    YEST.fileUploader.searchUploaderFiles();
                    YEST.fileUploader.showSelectedFiles();
                    YEST.fileUploader.closeMediaUploader();

                    $("#load-more").on("click", function () {
                        $("#load-more").addClass("d-none");
                        if (YEST.requiredData.next_page_url != null) {
                            $('[name="yest-show-selected"]').prop(
                                "checked",
                                false
                            );
                            YEST.fileUploader.getMediaFiles(
                                YEST.requiredData.next_page_url,
                                null,
                                true
                            );
                        }
                    });

                    $(".yest-uploader-search i").on("click", function () {
                        $(this).parent().toggleClass("open");
                    });

                    $('[data-toggle="yesMediaUploaderAddSelected"]').on(
                        "click",
                        function () {
                            if (from === "input") {
                                YEST.fileUploader.generatePreviewForInputBox(
                                    domEl
                                );
                            } else if (from === "direct") {
                                callback(YEST.requiredData.chosenFiles);
                            }
                            $("#yesMediaUploaderModal").modal("hide");
                        }
                    );
                }
            );
        },
        initForInput: function () {
            $(document).on(
                "click",
                '[data-toggle="yesMediaUploader"]',
                function (e) {
                    if (e.detail === 1) {
                        var domEl = $(this);
                        var multiple = domEl.data("multiple");
                        var type = domEl.data("type");
                        var oldSelectedFiles = domEl
                            .find(".chosen-files")
                            .val();

                        multiple = !multiple ? "" : multiple;
                        type = !type ? "" : type;
                        oldSelectedFiles = !oldSelectedFiles
                            ? ""
                            : oldSelectedFiles;

                        YEST.fileUploader.initUploader(
                            this,
                            "input",
                            type,
                            oldSelectedFiles,
                            multiple
                        );
                    }
                }
            );
        },
        generateFilePreview: function () {
            $('[data-toggle="yesMediaUploader"]').each(function () {
                var $this = $(this);
                var files = $this.find(".chosen-files").val();
                if (files != "") {
                    $.post(
                        YEST.requiredData.appUrl +
                            "yest-uploader/get-specific-files",
                        { _token: YEST.requiredData.csrf, ids: files },
                        function (data) {
                            $this.next(".view-file").html(null);

                            if (data.length > 0) {
                                $this
                                    .find(".file-amount")
                                    .html(
                                        YEST.fileUploader.updateCounterDom(data)
                                    );
                                for (var i = 0; i < data.length; i++) {
                                    var thumb = "";
                                    if (data[i].type === "image") {
                                        thumb =
                                            '<img src="' +
                                            YEST.requiredData.fileBaseUrl +
                                            data[i].file_name +
                                            '" class="img-fit">';
                                    } else {
                                        thumb =
                                            '<i class="la la-file-text"></i>';
                                    }
                                    var html =
                                        '<div class="d-flex justify-content-between align-items-center mt-2 view-file-item" data-id="' +
                                        data[i].id +
                                        '" title="' +
                                        data[i].file_original_name +
                                        "." +
                                        data[i].extension +
                                        '">' +
                                        '<div class="align-items-center align-self-stretch d-flex justify-content-center thumb">' +
                                        thumb +
                                        '<div class="remove">' +
                                        '<button class="btn btn-sm btn-link remove-attachment" type="button">' +
                                        '<i class="la la-close"></i>' +
                                        "</button>" +
                                        "</div>" +
                                        "</div>";

                                    $this.next(".view-file").append(html);
                                }
                            } else {
                                $this
                                    .find(".file-amount")
                                    .html(YEST.local.choose_file);
                            }
                        }
                    );
                }
            });
        },
        removeInputValue: function (id, array, domEl) {
            var selected = array.filter(function (item) {
                return item !== id;
            });
            if (selected.length > 0) {
                $(domEl)
                    .find(".file-amount")
                    .html(YEST.fileUploader.updateCounterDom(selected));
            } else {
                domEl.find(".file-amount").html(YEST.local.choose_file);
            }
            $(domEl).find(".chosen-files").val(selected);
        },
        removeAttachment: function () {
            $(document).on("click", ".remove-attachment", function () {
                var value = $(this).closest(".view-file-item").data("id");
                var selected = $(this)
                    .closest(".view-file")
                    .prev('[data-toggle="yesMediaUploader"]')
                    .find(".chosen-files")
                    .val()
                    .split(",")
                    .map(Number);

                YEST.fileUploader.removeInputValue(
                    value,
                    selected,
                    $(this)
                        .closest(".view-file")
                        .prev('[data-toggle="yesMediaUploader"]')
                );
                $(this).closest(".view-file-item").remove();
            });
        },
        deleteUploaderFile: function () {
            $(".yest-uploader-delete").each(function () {
                $(this).on("click", function (e) {
                    e.preventDefault();
                    var id = $(this).data("id");
                    YEST.requiredData.fileToDeleteId = id;
                    $("#yesMediaUploaderDelete").modal("show");

                    $(".yest-uploader-confirmed-delete").on(
                        "click",
                        function (e) {
                            e.preventDefault();
                            if (e.detail === 1) {
                                var clickedForDeleteObject =
                                    YEST.requiredData.allMediaFiles[
                                        YEST.requiredData.allMediaFiles.findIndex(
                                            (x) =>
                                                x.id ===
                                                YEST.requiredData.fileToDeleteId
                                        )
                                    ];
                                $.ajax({
                                    url:
                                        YEST.requiredData.appUrl +
                                        "yest-uploader/destroy/" +
                                        YEST.requiredData.fileToDeleteId,
                                    type: "DELETE",
                                    dataType: "JSON",
                                    data: {
                                        id: YEST.requiredData.fileToDeleteId,
                                        _method: "DELETE",
                                        _token: YEST.requiredData.csrf,
                                    },
                                    success: function () {
                                        YEST.requiredData.chosenFiles =
                                            YEST.requiredData.chosenFiles.filter(
                                                function (item) {
                                                    return (
                                                        item !==
                                                        YEST.requiredData
                                                            .fileToDeleteId
                                                    );
                                                }
                                            );
                                        YEST.requiredData.objectChosenFiles =
                                            YEST.requiredData.objectChosenFiles.filter(
                                                function (item) {
                                                    return (
                                                        item !==
                                                        clickedForDeleteObject
                                                    );
                                                }
                                            );
                                        YEST.fileUploader.updateMediaFilesSelected();
                                        YEST.fileUploader.getMediaFiles(
                                            YEST.requiredData.appUrl +
                                                "yest-uploader/get-media-files"
                                        );
                                        YEST.requiredData.fileToDeleteId = null;
                                        $("#yesMediaUploaderDelete").modal(
                                            "hide"
                                        );
                                    },
                                });
                            }
                        }
                    );
                });
            });
        },
    };

    YEST.fileUploader.initForInput();
    YEST.fileUploader.removeAttachment();
    YEST.fileUploader.generateFilePreview();
})(jQuery);
