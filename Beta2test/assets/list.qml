import bb.cascades 1.0




Page {
    content: Container {
      //  background: Color.create(0.8, 0.8, 0.8)
            Container {
               // background: Color.create(0.9, 0.9, 0.9)
                
                preferredWidth: 500.0
                ListView {
                    id: stampList
                    objectName: "stampList"
                    dataModel: XmlDataModel {
                        source: "models/phones.xml"
                    }
                    listItemComponents: [
                        ListItemComponent {
                            type: "header"
                            HeaderListItem {
                                title: ListItemData.title
                            }
                        },
                        ListItemComponent {
                            type: "item"
Container {
    id: stampContainer
    layout: DockLayout {
    }
    
    // A colored Container is used to highlight the item on selection.
    Container {
        id: highlight

    }
    
    // The item image is delivered to the item from a model (in this case models/stamps.xml).
    StandardListItem {
        title: ListItemData.title
        description: ListItemData.description
        imageSource: ListItemData.thumbURL
    }
}
                        }
                    ]
                    onTriggered: {
                        var chosenItem = dataModel.data(indexPath);
                        _contentView = chosenItem;
                    }
                }
            }
    }
}

