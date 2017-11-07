import QtQuick 2.0
import QtWebEngine 1.0
import QtQuick.Controls 2.2

Page {

    property alias url: webEngine.url
    property string headerTitle: "Preview"

    WebEngineView {
        anchors.fill: parent
        id: webEngine
        url: "http://www.qt.io"

        //onLoadingChanged: console.log(WebEngine.state)
    }
}
