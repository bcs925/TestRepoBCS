import bb.cascades 1.0

NavigationPane {
    id: navigationPane
Page {
    content: Container {
Button {
    id: one
    text: "Segmented"
    onClicked: {
       navigationPane.deprecatedPushQmlByString("segmented.qml");
    }
    
}
Button {
    id: two
    text: "Toggle"
    onClicked: {
        navigationPane.deprecatedPushQmlByString("feet2meters.qml");
    }
    
}
Button {
    id: three
    text: "Special Drop"
    onClicked: {
        navigationPane.deprecatedPushQmlByString("segmented2.qml");
    }
    
}
Button {
    id: four
    text: "Blamo!"
    onClicked: {
        navigationPane.deprecatedPushQmlByString("blamo.qml");
    }
    
}
Button {
    id: five
    text: "Horizontal List"
    onClicked: {
        navigationPane.deprecatedPushQmlByString("horizlist.qml");
    }
    
}

    }
}
}
