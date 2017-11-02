import QtQuick 2.7
import QtQuick.Controls 2.0

Item {
    id: item1

    property alias listModel: listModel
    property alias listView: listView
    property alias tabButtonTop: tabButtonTop
    property alias tabButtonLatest: tabButtonLatest

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
        ScrollBar.vertical: ScrollBar { }

        model: ListModel { id: listModel }
        delegate: ArticleDelegate { }
    }

    TabBar {
        id: tabBar
        height: 48
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0

        TabButton {
            id: tabButtonTop
            text: qsTr("Top")
        }

        TabButton {
            id: tabButtonLatest
            text: qsTr("Latest")
        }
    }
}







