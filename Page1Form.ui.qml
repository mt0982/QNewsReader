import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {

    property alias listModel: listModel

    ListView {
        id: listView
        anchors.fill: parent
        anchors.margins: 10
        spacing: 5

        model: ListModel { id: listModel }
        delegate: ArticleDelegate { }
    }
}







