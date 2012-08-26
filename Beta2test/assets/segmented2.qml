import bb.cascades 1.0

Page {
    content: Container {
        Container {
            SegmentedControl {
                id: tog
                Option {
                    id: feetoption
                    text: "USA"
                    value: 1
                    onSelectedChanged: {
                        if (feetoption.selected == true) {
                            dd1.title = "State";
                        } else {
                            dd1.title = "Providence";
                        }

                    }
                    selected: true
                }
                Option {
                    id: meteroption
                    text: "Canada"
                    value: 3.28084
                    onSelectedChanged: {
                        if (feetoption.selected == true) {
                            dd1.title = "State";
                        } else {
                            dd1.title = "Providence";
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
                title: "State"
                onSelectedIndexChanged: {
                    var droptext = dd1.at(dd1.selectedIndex).text;
                    label1.text = droptext;
                }
                Option {
                    text: {if (feetoption.selected == true) "Florida"; else "Ontario";}
                    value: 1
                }
                Option {
                    text: {if (feetoption.selected == true) "Ohio"; else "Quebec";}
                    value: 1
                }
                Option {
                    text: {if (feetoption.selected == true) "New York"; else "";}
                    value: 1
                    
                }
                Option {
                    text: "50"
                    value: 1
                    
                }
            }
            Label {
                id: label1
                text: ""
            }
        }
    }
}
