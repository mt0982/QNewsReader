import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "JS/Parser.js" as Parser

ApplicationWindow {
    visible: true
    width: 480 / 1.2
    height: 800 / 1.2
    title: qsTr("Hello World")

    Component.onCompleted: Parser.parseJSON()

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
            id: page1
        }

        WebEngine {
            id: webEngine
        }

//        Page {
//            Label {
//                text: qsTr("Second page")
//                anchors.centerIn: parent
//            }
//        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
}











