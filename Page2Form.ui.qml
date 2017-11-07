import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.1
import "Delegate" as Delegate

Item {
    id: item1

    property alias listModel: listModel
    property alias listView: listView
    property alias tabButtonTop: tabButtonTop
    property alias tabButtonLatest: tabButtonLatest
    property alias tabBar: tabBar

    Material.accent: "white"

    ListView {
        id: listView
        anchors.top: tabBar.bottom
        anchors.topMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        spacing: 5

        model: ListModel { id: listModel }
        delegate: Delegate.ArticleDelegate { }
        ScrollBar.vertical: ScrollBar {
            parent: listView
            height: listView.availableHeight
            width: 5
        }
    }

    TabBar {
        id: tabBar
        height: 48
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        spacing: 0

        TabButton {
            id: tabButtonTop
            text: qsTr("Top")

            background: Rectangle {
                color: "#F44336" //"#607D8B"

//                Rectangle {
//                    anchors.bottom: parent.bottom
//                    width: parent.width
//                    height: -3
//                    color: "red"
//                }
            }
        }

        TabButton {
            id: tabButtonLatest
            text: qsTr("Latest")

            background: Rectangle {
                color: "#F44336" //"#607D8B"

//                Rectangle {
//                    anchors.bottom: parent.bottom
//                    width: parent.width
//                    height: -3
//                    color: "red"
//                }
            }
        }
    }
}







