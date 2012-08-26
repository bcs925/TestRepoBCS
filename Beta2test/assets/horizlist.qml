import bb.cascades 1.0

Page {
    content: Container {
        Container {
            layout: StackLayout {
                layoutDirection: LayoutDirection.LeftToRight
            }
            Label {
                text: "Head:"
                textStyle.size: 70.0
                preferredWidth: 200.0
            }
            ListView {
                dataModel: XmlDataModel {
                    source: "models/head.xml"
                }
                listItemComponents: [
                    ListItemComponent {
                        type: "header"
                        Container {
                            background: Color.White
                            preferredWidth: maxWidth
                            Label {
                                text: ""
                                //  text: ListItemData.title
                            }
                        }
                    },
                    ListItemComponent {
                        type: "item"
                        Container {
                            background: Color.White
                            ImageView {
                                id: imageViewID
                                imageSource: ListItemData.head
                                preferredWidth: 300
                                preferredHeight: 300
                                scalingMethod: ScalingMethod.AspectFill
                            }
                        }
                    }
                ]
                onSelectionChanged: {
                }
                layout: StackListLayout {
                    layoutDirection: LayoutDirection.LeftToRight
                    headerMode: ListHeaderMode.Overlay
                }
                preferredWidth: 300.0
                preferredHeight: 325.0
            }
        }
        Container {
            layout: StackLayout {
                layoutDirection: LayoutDirection.LeftToRight
            }
            Label {
                text: "Body:"
                textStyle.size: 70.0
                preferredWidth: 200.0
            }
            ListView {
                dataModel: XmlDataModel {
                    source: "models/body.xml"
                }
                listItemComponents: [
                    ListItemComponent {
                        type: "header"
                        Container {
                            background: Color.White
                            preferredWidth: maxWidth
                            Label {
                                text: ""
                                //  text: ListItemData.title
                            }
                        }
                    },
                    ListItemComponent {
                        type: "item"
                        Container {
                            background: Color.White
                            ImageView {
                                id: imageViewID2
                                imageSource: ListItemData.body
                                preferredWidth: 300
                                preferredHeight: 300
                                scalingMethod: ScalingMethod.AspectFill
                            }
                        }
                    }
                ]
                onSelectionChanged: {
                }
                layout: StackListLayout {
                    layoutDirection: LayoutDirection.LeftToRight
                    headerMode: ListHeaderMode.Overlay
                }
                preferredWidth: 300.0
                preferredHeight: 325.0
            }
        }
        Container {
            layout: StackLayout {
                layoutDirection: LayoutDirection.LeftToRight
            }
            Label {
                text: "Legs:"
                textStyle.size: 70.0
                preferredWidth: 200.0
            }
            ListView {
                dataModel: XmlDataModel {
                    source: "models/leg.xml"
                }
                listItemComponents: [
                    ListItemComponent {
                        type: "header"
                        Container {
                            background: Color.White
                            preferredWidth: maxWidth
                            Label {
                                text: ""
                                //  text: ListItemData.title
                            }
                        }
                    },
                    ListItemComponent {
                        type: "item"
                        Container {
                            background: Color.White
                            ImageView {
                                id: imageViewID3
                                imageSource: ListItemData.leg
                                preferredWidth: 300
                                preferredHeight: 300
                                scalingMethod: ScalingMethod.AspectFill
                            }
                        }
                    }
                ]
                onSelectionChanged: {
                }
                layout: StackListLayout {
                    layoutDirection: LayoutDirection.LeftToRight
                    headerMode: ListHeaderMode.Overlay
                }
                preferredWidth: 300.0
                preferredHeight: 325.0
            }
        }
    }
}
