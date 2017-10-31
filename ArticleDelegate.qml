import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2

Component {

    Row {
        id: row
        width: parent.width
        height: imageURL.height

        //width: 300
//        width: Layout.width
//        height: Layout.height * 0.1
        spacing: 5

        Image {
            id: imageURL
            source: image
            height: 150
            width: height
            fillMode: Image.PreserveAspectCrop
        }

        Column {
            spacing: 5

            Text {
                text: title
                font.family: "GeosansLight"
                font.pointSize: 14
                width: row.width - imageURL.width
                elide: Text.ElideRight

//                NumberAnimation on x {
//                    from: 0 //parent.width
//                    to: 300 //-1*parent.width
//                    loops: Animation.Infinite
//                    duration: 3000
//                }
            }

            Text {
                text: description
                wrapMode: Text.Wrap
                horizontalAlignment: Text.AlignJustify
                width: row.width - imageURL.width
                height: imageURL.height - 20
                elide: Text.ElideRight
                Component.onCompleted: console.log(parent.width + " " + row.width)
            }
        }
    }
}











