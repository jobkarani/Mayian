import PropTypes from "prop-types";
import React from "react";
import BaseSelect from "react-select";

const noop = () => {
    // no operation (do nothing real quick)
};

class FixRequiredSelect extends React.Component {
    state = {
        value: this.props.value || "",
    };

    selectRef = null;
    setSelectRef = (ref) => {
        this.selectRef = ref;
    };

    onChange = (value, actionMeta) => {
        this.props.onChange(value, actionMeta);
        this.setState({ value });
    };

    getValue = () => {
        if (this.props.value != undefined) return this.props.value;
        return this.state.value || "";
    };

    render() {
        const { SelectComponent, required, ...props } = this.props;
        const { isDisabled } = this.props;
        const enableRequired = !isDisabled;

        return (
            <div>
                <SelectComponent
                    {...props}
                    ref={this.setSelectRef}
                    onChange={this.onChange}
                />
                {enableRequired && (
                    <input
                        tabIndex={-1}
                        autoComplete="off"
                        style={{
                            opacity: 0,
                            height: 0,
                            position: "absolute",
                            width: "0px",
                        }}
                        value={this.getValue()}
                        onChange={noop}
                        onFocus={() => this.selectRef.focus()}
                        required={required}
                    />
                )}
            </div>
        );
    }
}

FixRequiredSelect.defaultProps = {
    onChange: noop,
};

FixRequiredSelect.protoTypes = {
    // react-select component class (e.g. Select, Creatable, Async)
    selectComponent: PropTypes.func.isRequired,
    onChange: PropTypes.func,
    required: PropTypes.bool,
};

// select
const Select = (props) => (
    <FixRequiredSelect
        {...props}
        SelectComponent={BaseSelect}
        options={props.options || []}
    />
);

export default FixRequiredSelect;

export {Select};