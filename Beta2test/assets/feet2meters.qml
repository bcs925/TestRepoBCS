import bb.cascades 1.0

Page {
    Container {
        id: page1
        Label {
            text: "Feet?"
        }
        ToggleButton {
            id: tog
            onCheckedChanged: {
                var dropvalue = dd1.at(dd1.selectedIndex).value;
                if (checked == true) {
                    label1.text = "ft = " + dropvalue;
                    label2.text = "m = " + dropvalue / 3.28084;
                } else {
                    label1.text = "ft = " + dropvalue * 3.28084;
                    label2.text = "m = " + dropvalue;
                }
            }
            checked: true
        }
        DropDown {
            id: dd1
            title: "measure"
            onSelectedIndexChanged: {
                var dropvalue = dd1.at(dd1.selectedIndex).value;
                if (tog.checked == true) {
                    label1.text = "ft = " + dropvalue;
                    label2.text = "m = " + dropvalue / 3.28084;
                } else {
                    label1.text = "ft = " + dropvalue * 3.28084;
                    label2.text = "m = " + dropvalue;
                }
            }
            Option {
                text: {
                    if (tog.checked == true) "12 ft"; else "12 m";
                }
                value: 12
            }
            Option {
                text: {
                    if (tog.checked == true) "15 ft"; else "15 m";
                }
                value: 15
            }
            Option {
                text: {
                    if (tog.checked == true) "40 ft"; else "40 m";
                }
                value: 40
            }
            Option {
                text: {
                    if (tog.checked == true) "50 ft"; else "50 m";
                }
                value: 50
            }
        }
        Label {
            id: label1
            text: ""
        }
        Label {
            id: label2
            text: ""
        }
    }
}
