import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: avatars
    width: 435
    height: 330
    property alias avatars: avatars
    property alias buttonOk: buttonOk
    property alias buttonCancel: buttonCancel
    property alias mouseArea:mouseArea
    property alias mouseArea1:mouseArea1
    property alias mouseArea2:mouseArea2
    property alias mouseArea3:mouseArea3
    property alias mouseArea4:mouseArea4
    property alias mouseArea5:mouseArea5
    property alias mouseArea6:mouseArea6
    property alias mouseArea7:mouseArea7
    property alias mouseArea8:mouseArea8
    property alias mouseArea9:mouseArea9
    property alias image:image
    property alias image1:image1
    property alias image2:image2
    property alias image3:image3
    property alias image4:image4
    property alias image5:image5
    property alias image6:image6
    property alias image7:image7
    property alias image8:image8
    property alias image9:image9

    Rectangle {
        id: rectangle
        x: 8
        y: 8
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image
            objectName: "image"
            x: 0
            y: 0
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            clip: false
            enabled: true
            smooth: true
            fillMode: Image.Stretch
            source: "icons/avatar_boy.png"

            MouseArea {
                id: mouseArea
                width: 100
                height: 100
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 114
        y: 8
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image1
            x: -114
            y: -125
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "icons/avatar_female.png"

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle2
        x: 220
        y: 8
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image2
            x: 13
            y: -126
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "icons/avatar_girl.png"

            MouseArea {
                id: mouseArea2
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle3
        x: 327
        y: 8
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image3
            x: 98
            y: -119
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "icons/avatar_male.png"

            MouseArea {
                id: mouseArea3
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle4
        x: 8
        y: 115
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image4
            x: -203
            y: -8
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "icons/avatar_malecostume.png"

            MouseArea {
                id: mouseArea4
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle5
        x: 114
        y: 114
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image5
            x: -82
            y: 0
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "icons/avatar_matureman1.png"

            MouseArea {
                id: mouseArea5
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle6
        x: 220
        y: 114
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image6
            x: 89
            y: -8
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "icons/avatar_matureman2.png"

            MouseArea {
                id: mouseArea6
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle7
        x: 327
        y: 115
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image7
            x: 218
            y: 12
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "icons/avatar_maturewoman.png"

            MouseArea {
                id: mouseArea7
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle8
        x: 8
        y: 222
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image8
            x: -212
            y: 124
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "icons/avatar_supportfemale.png"

            MouseArea {
                id: mouseArea8
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle9
        x: 114
        y: 222
        width: 100
        height: 100
        color: "#ffffff"
        radius: 10
        border.color: "#66b2ff"
        border.width: 5

        Image {
            id: image9
            x: -79
            y: 114
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "icons/avatar_supportmale.png"

            MouseArea {
                id: mouseArea9
                anchors.fill: parent
            }
        }
    }

    Button {
        id: buttonOk
        x: 287
        y: 282
        text: qsTr("Ok")
    }

    Button {
        id: buttonCancel
        x: 363
        y: 282
        text: qsTr("Cancel")
    }
}
