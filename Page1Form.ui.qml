import QtQuick 2.4
import QtQuick.Controls 2.0

Item {
    width: 400
    height: 400

    property alias listModel: listModel

    ListView {
        id: listView
        anchors.rightMargin: 5
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        anchors.fill: parent
        spacing: 5

        delegate: CategoryDelegate { id: listDelegate }
        model: ListModel { id: listModel }

        section.property: "categoryName"
        section.criteria: ViewSection.FirstCharacter
        section.delegate: Rectangle { height: 10 }
    }

}
