// for toggle attr custom jquery method
$.fn.toggleAttr = function (attr, attr1, attr2) {
    return this.each(function () {
        var self = $(this);
        if (self.attr(attr) == attr1) self.attr(attr, attr2);
        else self.attr(attr, attr1);
    });
};

(function ($) {
    // USE STRICT
    "use strict";

    YEST.data = {
        csrf: $('meta[name="csrf-token"]').attr("content"),
        appUrl: $('meta[name="app-url"]').attr("content"),
        fileBaseUrl: $('meta[name="file-base-url"]').attr("content"),
    };
    YEST.libraries = {
        metismenu: function () {
            $('[data-toggle="yest-side-menu"]').metisMenu();
        },
        bootstrapSelect: function (action = "") {
            $(".yest-selectpicker").each(function (el) {
                var $this = $(this);
                var refresh = $this.data("refresh");
                var destroy = $this.data("destroy");
                if (!$this.parent().hasClass("bootstrap-select")) {
                    var selected = $this.data("selected");
                    if (typeof selected !== "undefined") {
                        $this.val(selected);
                    }
                    $this.selectpicker({
                        size: 5,
                        noneSelectedText: YEST.local.please_choose_options,
                        virtualScroll: false,
                    });
                }
                if (refresh && action === "refresh") {
                    $this.selectpicker("refresh");
                }
                if (destroy && action === "destroy") {
                    $this.selectpicker("destroy");
                }
            });
        },
        tagify: function () {
            $(".yest-tag-input")
                .not(".tagify")
                .each(function () {
                    var $this = $(this);

                    var maxTags = $this.data("max-tags");
                    var whitelist = $this.data("whitelist");
                    var onchange = $this.data("on-change");

                    maxTags = !maxTags ? Infinity : maxTags;
                    whitelist = !whitelist ? [] : whitelist;

                    $this.tagify({
                        maxTags: maxTags,
                        whitelist: whitelist,
                        dropdown: {
                            enabled: 1,
                        },
                    });
                    try {
                        callback = eval(onchange);
                    } catch (e) {
                        var callback = "";
                    }
                    if (typeof callback == "function") {
                        $this.on("removeTag", function () {
                            callback();
                        });
                        $this.on("add", function () {
                            callback();
                        });
                    }
                });
        },
        textEditor: function () {
            $(".yest-text-editor").each(function (el) {
                var $this = $(this);
                var buttons = $this.data("buttons");
                var minHeight = $this.data("min-height");
                var placeholder = $this.attr("placeholder");
                var format = $this.data("format");

                buttons = !buttons
                    ? [
                          ["view", ["undo", "redo"]],
                          ["color", ["color"]],
                          ["style", ["style"]],
                          ["fontsize", ["fontsize"]],
                          ["font", ["bold", "underline", "italic", "clear"]],
                          ["para", ["ul", "ol", "paragraph"]],
                          ["table", ["table"]],
                          ["insert", ["link", "picture", "video"]],
                          ["view", ["fullscreen"]],
                      ]
                    : buttons;
                placeholder = !placeholder ? "" : placeholder;
                minHeight = !minHeight ? 200 : minHeight;
                format = typeof format == "undefined" ? false : format;

                $this.summernote({
                    codeviewFilter: true,
                    toolbar: buttons,
                    placeholder: placeholder,
                    height: minHeight,
                    callbacks: {
                        onImageUpload: function (data) {
                            data.pop();
                        },
                        onPaste: function (e) {
                            if (!format) {
                                var bufferText = (
                                    (e.originalEvent || e).clipboardData ||
                                    window.clipboardData
                                ).getData("Text");
                                e.preventDefault();
                                document.execCommand(
                                    "insertText",
                                    false,
                                    bufferText
                                );
                            }
                        },
                    },
                });

                var nativeHtmlBuilderFunc = $this.summernote(
                    "module",
                    "videoDialog"
                ).createVideoNode;

                $this.summernote("module", "videoDialog").createVideoNode =
                    function (url) {
                        var wrap = $(
                            '<div class="embed-responsive embed-responsive-16by9"></div>'
                        );
                        var html = nativeHtmlBuilderFunc(url);
                        html = $(html).addClass("embed-responsive-item");
                        return wrap.append(html)[0];
                    };
            });
        },
        dateRange: function () {
            $(".yest-date-range").each(function () {
                var $this = $(this);
                var today = moment().startOf("day");
                var value = $this.val();
                var startDate = false;
                var minDate = false;
                var maxDate = false;
                var advncdRange = false;
                var ranges = {
                    Today: [moment(), moment()],
                    Yesterday: [
                        moment().subtract(1, "days"),
                        moment().subtract(1, "days"),
                    ],
                    "Last 7 Days": [moment().subtract(6, "days"), moment()],
                    "Last 30 Days": [moment().subtract(29, "days"), moment()],
                    "This Month": [
                        moment().startOf("month"),
                        moment().endOf("month"),
                    ],
                    "Last Month": [
                        moment().subtract(1, "month").startOf("month"),
                        moment().subtract(1, "month").endOf("month"),
                    ],
                };

                var single = $this.data("single");
                var monthYearDrop = $this.data("show-dropdown");
                var format = $this.data("format");
                var separator = $this.data("separator");
                var pastDisable = $this.data("past-disable");
                var futureDisable = $this.data("future-disable");
                var timePicker = $this.data("time-picker");
                var timePickerIncrement = $this.data("time-gap");
                var advncdRange = $this.data("advanced-range");

                single = !single ? false : single;
                monthYearDrop = !monthYearDrop ? false : monthYearDrop;
                format = !format ? "YYYY-MM-DD" : format;
                separator = !separator ? " / " : separator;
                minDate = !pastDisable ? minDate : today;
                maxDate = !futureDisable ? maxDate : today;
                timePicker = !timePicker ? false : timePicker;
                timePickerIncrement = !timePickerIncrement
                    ? 1
                    : timePickerIncrement;
                ranges = !advncdRange ? "" : ranges;

                $this.daterangepicker({
                    singleDatePicker: single,
                    showDropdowns: monthYearDrop,
                    minDate: minDate,
                    maxDate: maxDate,
                    timePickerIncrement: timePickerIncrement,
                    autoUpdateInput: false,
                    ranges: ranges,
                    locale: {
                        format: format,
                        separator: separator,
                        applyLabel: "Select",
                        cancelLabel: "Clear",
                    },
                });
                if (single) {
                    $this.on("apply.daterangepicker", function (ev, picker) {
                        $this.val(picker.startDate.format(format));
                    });
                } else {
                    $this.on("apply.daterangepicker", function (ev, picker) {
                        $this.val(
                            picker.startDate.format(format) +
                                separator +
                                picker.endDate.format(format)
                        );
                    });
                }

                $this.on("cancel.daterangepicker", function (ev, picker) {
                    $this.val("");
                });
            });
        },
        timePicker: function () {
            $(".yest-time-picker").each(function () {
                var $this = $(this);

                var minuteStep = $this.data("minute-step");
                var defaultTime = $this.data("default");

                minuteStep = !minuteStep ? 10 : minuteStep;
                defaultTime = !defaultTime ? "00:00" : defaultTime;

                $this.timepicker({
                    template: "dropdown",
                    minuteStep: minuteStep,
                    defaultTime: defaultTime,
                    icons: {
                        up: "las la-angle-up",
                        down: "las la-angle-down",
                    },
                    showInputs: false,
                });
            });
        },
        fooTable: function () {
            $(".yest-table").each(function () {
                var $this = $(this);

                var empty = $this.data("empty");
                empty = !empty ? YEST.local.no_data_found : empty;

                $this.footable({
                    breakpoints: {
                        xs: 576,
                        sm: 768,
                        md: 992,
                        lg: 1200,
                        xl: 1400,
                    },
                    cascade: true,
                    on: {
                        "ready.ft.table": function (e, ft) {
                            YEST.helpers.confirmDelete();
                            YEST.libraries.bootstrapSelect("refresh");
                        },
                    },
                    empty: empty,
                });
            });
        },
        notify: function (type = "dark", message = "") {
            $.notify(
                {
                    // options
                    message: message,
                },
                {
                    // settings
                    showProgressbar: false,
                    delay: 3000,
                    mouse_over: "pause",
                    placement: {
                        from: "top",
                        align: "right",
                    },
                    type: type,
                    template:
                        '<div data-notify="container" class="yest-notify alert alert-{0}" role="alert">' +
                        '<span data-notify="message">{2}</span>' +
                        '<div class="progress" data-notify="progressbar">' +
                        '<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
                        "</div>" +
                        "</div>",
                }
            );
        },
        socialShareJs: function () {
            $(".yest-share").jsSocials({
                showLabel: false,
                showCount: false,
                shares: [
                    {
                        share: "email",
                        logo: "lar la-envelope",
                    },
                    {
                        share: "twitter",
                        logo: "lab la-twitter",
                    },
                    {
                        share: "facebook",
                        logo: "lab la-facebook-f",
                    },
                    {
                        share: "linkedin",
                        logo: "lab la-linkedin-in",
                    },
                    {
                        share: "whatsapp",
                        logo: "lab la-whatsapp",
                    },
                ],
            });
        },
    };

    YEST.helpers = {
        confirmDelete: function () {
            $(".confirm-delete").click(function (e) {
                e.preventDefault();
                var url = $(this).data("href");
                $("#delete-modal").modal("show");
                $("#delete-link").attr("href", url);
            });

            $(".confirm-cancel").click(function (e) {
                e.preventDefault();
                var url = $(this).data("href");
                $("#cancel-modal").modal("show");
                $("#cancel-link").attr("href", url);
            });

            $(".confirm-complete").click(function (e) {
                e.preventDefault();
                var url = $(this).data("href");
                $("#complete-modal").modal("show");
                $("#comfirm-link").attr("href", url);
            });

            $(".confirm-alert").click(function (e) {
                e.preventDefault();
                var url = $(this).data("href");
                var target = $(this).data("target");
                $(target).modal("show");
                $(target).find(".comfirm-link").attr("href", url);
                $("#comfirm-link").attr("href", url);
            });
        },
        showMultipleModal: function () {
            $(document).on("show.bs.modal", ".modal", function (event) {
                var zIndex = 1040 + 10 * $(".modal:visible").length;
                $(this).css("z-index", zIndex);
                setTimeout(function () {
                    $(".modal-backdrop")
                        .not(".modal-stack")
                        .css("z-index", zIndex - 1)
                        .addClass("modal-stack");
                }, 0);
            });
            $(document).on("hidden.bs.modal", function () {
                if ($(".modal.show").length > 0) {
                    $("body").addClass("modal-open");
                }
            });
        },
        refreshCsrfToken: function () {
            $.get(YEST.data.appUrl + "/refresh-token").done(function (data) {
                YEST.data.csrf = data;
            });
        },
        toggleMobileNav: function () {
            if (window.matchMedia("(max-width: 1200px)").matches) {
                $("body").addClass("side-menu-closed");
            }
            $('[data-toggle="yest-mobile-nav"]').on("click", function () {
                if ($("body").hasClass("side-menu-open")) {
                    $("body")
                        .addClass("side-menu-closed")
                        .removeClass("side-menu-open");
                } else if ($("body").hasClass("side-menu-closed")) {
                    $("body")
                        .removeClass("side-menu-closed")
                        .addClass("side-menu-open");
                } else {
                    $("body")
                        .removeClass("side-menu-open")
                        .addClass("side-menu-closed");
                }
            });
            $(".yest-sidebar-overlay").on("click", function () {
                $("body")
                    .removeClass("side-menu-open")
                    .addClass("side-menu-closed");
            });
        },
        setMenuActiveClass: function () {
            $('[data-toggle="yest-side-menu"] a').each(function () {
                var pageUrl = window.location.href.split(/[?#]/)[0];
                if (this.href == pageUrl || $(this).hasClass("active")) {
                    $(this).addClass("active");
                    $(this)
                        .closest(".yest-side-nav-item")
                        .addClass("mm-active");
                    $(this)
                        .closest(".level-2")
                        .siblings("a")
                        .addClass("level-2-active");
                    $(this)
                        .closest(".level-3")
                        .siblings("a")
                        .addClass("level-3-active");
                }
            });
        },
        customFileInputBootstrap: function () {
            $(".custom-file input").change(function (e) {
                var files = [];
                for (var i = 0; i < $(this)[0].files.length; i++) {
                    files.push($(this)[0].files[i].name);
                }
                if (files.length === 1) {
                    $(this).next(".custom-file-name").html(files[0]);
                } else if (files.length > 1) {
                    $(this)
                        .next(".custom-file-name")
                        .html(files.length + " " + YEST.local.files_selected);
                } else {
                    $(this)
                        .next(".custom-file-name")
                        .html(YEST.local.choose_file);
                }
            });
        },
        stopPropagation: function () {
            $(document).on("click", ".stop-propagation", function (e) {
                e.stopPropagation();
            });
        },
        handleOutsideClickHide: function () {
            $(document).on("click", function (e) {
                $(".document-click-d-none").addClass("d-none");
            });
        },
        classToggle: function () {
            $(document).on(
                "click",
                '[data-toggle="class-toggle"]',
                function () {
                    var $this = $(this);
                    var target = $this.data("target");
                    var sameTriggers = $this.data("same");

                    if ($(target).hasClass("active")) {
                        $(target).removeClass("active");
                        $(sameTriggers).removeClass("active");
                        $this.removeClass("active");
                    } else {
                        $(target).addClass("active");
                        $this.addClass("active");
                    }
                }
            );
        },
        collapseMenuSidebar: function () {
            $(document).on(
                "click",
                '[data-toggle="collapse-sidebar"]',
                function (i, el) {
                    var $this = $(this);
                    var target = $(this).data("target");
                    var sameTriggers = $(this).data("siblings");

                    e.preventDefault();
                    if ($(target).hasClass("opened")) {
                        $(target).removeClass("opened");
                        $(sameTriggers).removeClass("opened");
                        $($this).removeClass("opened");
                    } else {
                        $(target).addClass("opened");
                        $($this).addClass("opened");
                    }
                }
            );
        },
        addMoreField: function () {
            $('[data-toggle="add-more-field"]').each(function () {
                var $this = $(this);
                var content = $this.data("content");
                var target = $this.data("target");

                $this.on("click", function (e) {
                    e.preventDefault();
                    $(target).append(content);
                    YEST.libraries.bootstrapSelect();
                });
            });
        },
        removeParent: function () {
            $(document).on(
                "click",
                '[data-toggle="remove-parent"]',
                function () {
                    var $this = $(this);
                    var parent = $this.data("parent");
                    $this.closest(parent).remove();
                }
            );
        },
        selectHideShow: function () {
            $('[data-show="selectShow"]').each(function () {
                var target = $(this).data("target");
                $(this).on("change", function () {
                    var value = $(this).val();
                    $(target)
                        .children()
                        .not("." + value)
                        .addClass("d-none");
                    $(target)
                        .find("." + value)
                        .removeClass("d-none");
                });
            });
        },
        setCookie: function (cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
            var expires = "expires=" + d.toUTCString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
        },
        getCookie: function (cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(";");
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) === " ") {
                    c = c.substring(1);
                }
                if (c.indexOf(name) === 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        },
        acceptCookie: function () {
            if (!YEST.helpers.getCookie("acceptCookies")) {
                $(".yest-cookie-alert").addClass("show");
            }
            $(".yest-cookie-accept").on("click", function () {
                YEST.helpers.setCookie("acceptCookies", true, 60);
                $(".yest-cookie-alert").removeClass("show");
            });
        },
        setSession: function () {
            $(".set-session").each(function () {
                var $this = $(this);
                var key = $this.data("key");
                var value = $this.data("value");

                const now = new Date();
                const item = {
                    value: value,
                    expiry: now.getTime() + 86400000,
                };

                $this.on("click", function () {
                    localStorage.setItem(key, JSON.stringify(item));
                });
            });
        },
    };

    setInterval(function () {
        YEST.helpers.refreshCsrfToken();
    }, 3600000);
})(jQuery);
