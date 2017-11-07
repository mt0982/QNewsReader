import QtQuick 2.7
import QtQuick.Controls 2.2
import "JS/Parser.js" as Parser

ApplicationWindow {
    id: root
    visible: true
    width: 480 / 1.2
    height: 800 / 1.2
    title: qsTr("QNews Reader")

    Component.onCompleted: {
        //Parser.parseJSON("top")
        Parser.parseCategories()
    }

    header: ToolBar {
        height: page1.tabButtonTop.height

        background: Rectangle {
            anchors.fill: parent
            color: "#F44336" //"#607D8B" //"#35b566"
        }

        /* Header Text */
        Text {
            anchors.centerIn: parent
            text: swipeView.currentItem.headerTitle
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font: page1.tabButtonTop.font

            /* Required To Auto Size */
            width: parent.width * 0.6
            height: parent.height * 0.6
            color: "#ffffff"
            //font.pointSize: 32
            minimumPointSize: 10
            fontSizeMode: Text.Fit
        }

        /* Button Backward */
        TabButton {
            id: buttonBackward
            width: parent.height - 10
            height: width
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 5
            visible: (swipeView.currentIndex) ? true : false

            onClicked: swipeView.currentIndex = --swipeView.currentIndex

            contentItem: Image {
                source: "qrc:/Icon/back.png"
            }
        }

//        /* Button Categories */
//        TabButton {
//            anchors.right: parent.right
//            anchors.rightMargin: 5
//            anchors.verticalCenter: parent.verticalCenter
//            width: parent.height - 10
//            height: width
//            visible: (!swipeView.currentIndex) ? true : false

//            contentItem: Image {
//                source: "qrc:/Icon/menu.png"
//                fillMode: Image.PreserveAspectFit
//            }

//            onClicked: menuCategories.open()

//            Menu {
//                id: menuCategories
//                modal: true

//                CheckBox { text: qsTr("business") }
//                CheckBox { text: qsTr("entertainment") }
//                CheckBox { text: qsTr("gaming") }
//                CheckBox { text: qsTr("general") }
//                CheckBox { text: qsTr("music") }
//                CheckBox { text: qsTr("science-and-nature") }
//                CheckBox { text: qsTr("sport") }
//                CheckBox { text: qsTr("technology") }
//            }
//        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        interactive: false

        Page1 { id: page0 }
        Page2 { id: page1 }
        WebEngine { id: webEngine }
    }
}











