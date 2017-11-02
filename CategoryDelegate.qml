import QtQuick 2.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Component {

    Row {
        spacing: 5

        property var aaaa: textField.text

        Rectangle {
            id: rectangle
            width: height
            height: listView.height * 0.1          //listviw contentY
            color: "#35b566"
            radius: 2

            Text {
                anchors.centerIn: parent
                text: textField.text.substring(0,2).toUpperCase()
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: "#ceedda"

                /* Required To Auto Size */
                width: parent.width * 0.6
                height: parent.height * 0.6
                font.pointSize: 32
                minimumPointSize: 10
                fontSizeMode: Text.Fit
            }
        }

        Text {
            id: textField
            text: categoryName
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenter: rectangle.verticalCenter
        }
    }
}













