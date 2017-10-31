import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2

Component {

    Row {
        id: row
        width: parent.width
       height: 100

        //width: 300
//        width: Layout.width
//        height: Layout.height * 0.1
        spacing: 5

        Image {
            id: imageURL
            source: image
            width: 100
            height: 100
        }

        Column {
            spacing: 5

            Text {
                text: title
                font.family: "GeosansLight"
                font.pointSize: 14
                width: row.width - 100
                //wrapMode: Text.Wrap
                //anchors.horizontalCenter: Layout.horizontalCenter
                //effectiveHorizontalAlignment: Text.AlignJustify

//                NumberAnimation on x{
//                    from: 0//parent.width
//                    to: -parent.width//-1*parent.width
//                    loops: Animation.Infinite
//                    duration: 3000
//                }
            }

            Text {
                text: description
                wrapMode: Text.Wrap
                horizontalAlignment: Text.AlignJustify
                width: row.width - 110
                height: imageURL.height * 0.8
                elide: Text.ElideRight
//                Component.onCompleted: console.log(parent.height)
            }
        }
    }
}











