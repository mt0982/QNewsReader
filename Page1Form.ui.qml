import QtQuick 2.7
import QtQuick.Controls 2.0

Item {

    property alias listModel: listModel
    property alias listView: listView

    ListView {
        id: listView
        anchors.fill: parent
        anchors.margins: 10
        spacing: 5
        ScrollBar.vertical: ScrollBar { }

        model: ListModel { id: listModel }
        delegate: ArticleDelegate { }
    }
}







