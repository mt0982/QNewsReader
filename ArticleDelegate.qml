import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2

Component {

    /* Important Tip For Mouse Area Inside Row */
    MouseArea {
        anchors.left: parent.left
        anchors.right: parent.right
        height: row.height

        onClicked: {
            //console.log(row.websiteURL)
            webEngine.url = row.websiteURL
        }

        /* Content, Single Row */
        Row {
            id: row
            width: parent.width
            height: imageURL.height
            spacing: 5

            property string websiteURL: webURL

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
    //                    id: anime
    //                    running: false
    //                    from: row.width //parent.width
    //                    to: 0 //-1*parent.width
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
                }
            }

            /* Animation */
            Component.onCompleted: animation.start()

            transform: Rotation {
                id: rt
                origin.x: width
                origin.y: height
                axis {
                    x: 0.3
                    y: 1
                    z: 1
                }
                angle: 0
            }

            SequentialAnimation {
                id: animation
                running: false

                RotationAnimation {
                    target: rt
                    from: 180
                    to: 0
                    duration: 800
                    easing.type: Easing.OutBack
                    property: "angle"
                }
            }
        }
    }
}











