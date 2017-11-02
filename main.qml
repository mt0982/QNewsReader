import QtQuick 2.7
import QtQuick.Controls 2.0
import "JS/Parser.js" as Parser

///home/asus/Programy/Qt/5.9.2/Src/qtquickcontrols2/examples/quickcontrols2/gallery/images
//https://material.io/guidelines/components/tabs.html#tabs-usage

ApplicationWindow {
    visible: true
    width: 480 / 1.2
    height: 800 / 1.2
    title: qsTr("Hello World")

    Component.onCompleted: {
        //Parser.parseJSON("top")
        Parser.parseCategories()
    }

    header: ToolBar {
        height: 64

        Image {
            id: buttonBackward
            visible: (swipeView.currentIndex) ? true : false
            source: "qrc:/Icon/back.png"
            height: 48
            width: 48
            anchors.leftMargin: 15
            anchors.verticalCenter: parent.verticalCenter

            MouseArea {
                anchors.fill: parent
                onClicked: swipeView.currentIndex = --swipeView.currentIndex
            }
        }
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











