import bb.cascades 1.0

NavigationPane {
    property variant _contentView
    Page {
        content: Container {
            //This is the "main" container
            layout: StackLayout {
                layoutDirection: LayoutDirection.LeftToRight
            }
            Container {
                //This is the "first" container
                preferredWidth: 500.0
                ListView {
                    // List stuff here
                    onTriggered: {
                        // where you click on a list item functions here                 
                    }
                }
            }
            Container {
                //This is the "second" container
                preferredWidth: 780.0
                preferredHeight: 768.0
            }
        }
    }
}
