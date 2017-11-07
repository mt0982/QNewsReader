import QtQuick 2.0

Rectangle {
    height: 10
    width: parent.width
    id: spacer
    color: "transparent"

    Rectangle {
        y: 3
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 5
        height: 1
        color: "#cccccc"

        Rectangle {
            anchors.centerIn: parent
            color: "transparent"
            width: 32
            height: 32

            Text {
                id: name
                text: section
                anchors.centerIn: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}
