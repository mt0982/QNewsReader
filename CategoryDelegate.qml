import QtQuick 2.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0
import "JS/Parser.js" as Parser

Component {

    /* Important Tip For Mouse Area Inside Row */
    MouseArea {
        anchors.left: parent.left
        anchors.right: parent.right
        height: row.height

        onClicked: {
//            console.log(categoryID)
            Parser.parseJSON(categoryID, "top")
            currentCategoryID = categoryID
            swipeView.currentIndex = ++swipeView.currentIndex
        }

        /* Content */
        Row {
            id: row
            spacing: 5

            property string categoryID: ""

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
}













