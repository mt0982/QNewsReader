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
        height: page1.tabButtonTop.height

        background: Rectangle {
            anchors.fill: parent
            color: "#607D8B" //"#35b566"
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
        Image {
            id: buttonBackward
            visible: (swipeView.currentIndex) ? true : false
            source: "qrc:/Icon/back.png"
            height: parent.height * 0.5
            width: height
            x: 10
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











