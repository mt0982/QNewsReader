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

        onLoadingChanged: {
            if (loadRequest.status === WebEngineView.LoadStartedStatus) busyIndicator.visible = true
            if (loadRequest.status === WebEngineView.LoadSucceededStatus) busyIndicator.visible = false
        }
    }

    BusyIndicator {
        id: busyIndicator
        anchors.right: webEngine.right
        anchors.bottom: webEngine.bottom
        anchors.margins: 10
        Material.accent: Material.Red
    }
}
