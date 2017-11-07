import QtQuick 2.4
import QtQuick.Controls 2.0
import "Delegate" as Delegate

Item {
    width: 400
    height: 400

    property alias listModel: listModel

    ListView {
        id: listView
        anchors.rightMargin: 0
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        anchors.fill: parent
        spacing: 5

        delegate: Delegate.CategoryDelegate { id: listDelegate }
        model: ListModel { id: listModel }
        ScrollBar.vertical: ScrollBar { }

        section.property: "categoryName"
        section.criteria: ViewSection.FirstCharacter
        section.delegate: Delegate.SectionHeaderDelegate {}
    }

}


















