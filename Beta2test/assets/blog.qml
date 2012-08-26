import bb.cascades 1.0

Page {
    ScrollView {
        Container {
            background: Color.create ("#f8f8f8")
            layout: StackLayout {
                layoutDirection: LayoutDirection.TopToBottom
            }
            WebView {
                 url: "https://www.google.com/search?q=" + whatiwanttosearch.text
            }
        }
    }
}