import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    width: 435
    height: 330
    property alias image: image
    property alias buttonOk: buttonOk
    property alias buttonCancel: buttonCancel

    Image {
        id: image
        x: 8
        y: 8
        width: 100
        height: 100
        enabled: true
        smooth: true
        fillMode: Image.Stretch
        source: "icons/avatar_boy.png"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Image {
        id: image1
        x: 114
        y: 8
        width: 100
        height: 100
        source: "icons/avatar_female.png"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
        }
    }

    Image {
        id: image2
        x: 220
        y: 8
        width: 100
        height: 100
        source: "icons/avatar_girl.png"

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
        }
    }

    Image {
        id: image3
        x: 326
        y: 8
        width: 100
        height: 100
        source: "icons/avatar_male.png"

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
        }
    }

    Image {
        id: image4
        x: 8
        y: 114
        width: 100
        height: 100
        source: "icons/avatar_malecostume.png"

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
        }
    }

    Image {
        id: image5
        x: 114
        y: 114
        width: 100
        height: 100
        source: "icons/avatar_matureman1.png"

        MouseArea {
            id: mouseArea5
            anchors.fill: parent
        }
    }

    Image {
        id: image6
        x: 220
        y: 114
        width: 100
        height: 100
        source: "icons/avatar_matureman2.png"

        MouseArea {
            id: mouseArea6
            anchors.fill: parent
        }
    }

    Image {
        id: image7
        x: 326
        y: 114
        width: 100
        height: 100
        source: "icons/avatar_maturewoman.png"

        MouseArea {
            id: mouseArea7
            anchors.fill: parent
        }
    }

    Image {
        id: image8
        x: 8
        y: 220
        width: 100
        height: 100
        source: "icons/avatar_supportfemale.png"

        MouseArea {
            id: mouseArea8
            anchors.fill: parent
        }
    }

    Image {
        id: image9
        x: 114
        y: 220
        width: 100
        height: 100
        source: "icons/avatar_supportmale.png"

        MouseArea {
            id: mouseArea9
            anchors.fill: parent
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
