import bb.cascades 1.0

NavigationPane {
    id: navigationPane
    Page {
        Button {
            id: buttonID
            onClicked: {
                navigationPane.deprecatedPushQmlByString("blog.qml");
            }
            preferredWidth: -1.0
            text: "Go To My Blog"
        }
    }
}
