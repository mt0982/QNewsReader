import QtQuick 2.0
import QtWebEngine 1.0
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2

Page {

    property alias url: webEngine.url
    property string headerTitle: "Preview"

    WebEngineView {
        id: webEngine
        anchors.fill: parent
        url: "http://www.qt.io"
    }

    BusyIndicator {
        id: busyIndicator
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 10
        Material.accent: Material.Red
        running: webEngine.loading ? true : false
        //visible: running ? true : false

        Behavior on running {
            NumberAnimation { duration: 2000 }
        }
    }
}
