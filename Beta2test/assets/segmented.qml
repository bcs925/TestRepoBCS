import bb.cascades 1.0

Page {
    content: Container {
        Container {
            SegmentedControl {
                id: tog
                Option {
                    id: feetoption
                    text: "Feet"
                    onSelectedChanged: {
                        if (feetoption.selected == true) {
                            dd1.title = "measure (ft)";
                        } else {
                            dd1.title = "measure (m)";
                        }
                        var dropvalue = dd1.at(dd1.selectedIndex).value;
                        if (feetoption.selected == true) {
                            label1.text = "ft = " + dropvalue;
                            label2.text = "m = " + dropvalue / 3.28084;
                        } else {
                            label1.text = "ft = " + dropvalue * 3.28084;
                            label2.text = "m = " + dropvalue;
                        }
                    }
                    selected: true
                }
                Option {
                    id: meteroption
                    text: "Meters"
                    onSelectedChanged: {
                        if (feetoption.selected == true) {
                            dd1.title = "measure (ft)";
                        } else {
                            dd1.title = "measure (m)";
                        }
                        var dropvalue = dd1.at(dd1.selectedIndex).value;
                        if (feetoption.selected == true) {
                            label1.text = "ft = " + dropvalue;
                            label2.text = "m = " + dropvalue / 3.28084;
                        } else {
                            label1.text = "ft = " + dropvalue * 3.28084;
                            label2.text = "m = " + dropvalue;
                        }
                    }
                }
                onSelectedIndexChanged: {
                    var choosen1 = tog.selectedValue()
                    console.debug("Selected value: " + choosen1);
                }
                preferredWidth: 400.0
            }
            DropDown {
                id: dd1
                title: "measure (ft)"
                onSelectedIndexChanged: {
                    var dropvalue = dd1.at(dd1.selectedIndex).value;
                    if (feetoption.selected == true) {
                        label1.text = "ft = " + dropvalue;
                        label2.text = "m = " + dropvalue / 3.28084;
                    } else {
                        label1.text = "ft = " + dropvalue * 3.28084;
                        label2.text = "m = " + dropvalue;
                    }
                }
                Option {
                    text: "12"
                    value: 12
                }
                Option {
                    text: "15"
                    value: 15
                }
                Option {
                    text: "40"
                    value: 40
                }
                Option {
                    text: "50"
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
}
