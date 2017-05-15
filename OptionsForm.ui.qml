import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: options
    width: 400
    height: 600
    property alias textFieldUserName: textFieldUserName
    property alias buttonApply: buttonApply
    property alias mouseAreaAvatar: mouseAreaAvatar
    property alias imageAvatar: imageAvatar
    property alias checkBoxTray: checkBoxTray
    property alias textFieldPort: textFieldPort

    Button {
        id: buttonApply
        x: 8
        y: 266
        text: qsTr("Apply")
    }

    CheckBox {
        id: checkBoxTray
        objectName: "checkBoxTray"
        x: 8
        y: 8
        text: qsTr("To tray on push exit")
    }

    TextField {
        id: textFieldPort
        objectName: "textFieldPort"
        x: 8
        y: 62
        text: qsTr("12345")
    }

    Label {
        id: label
        x: 134
        y: 75
        text: qsTr("TCP port")
    }

    TextField {
        id: textFieldUserName
        objectName: "textFieldUserName"
        x: 8
        y: 111
        text: qsTr("Anonimous")
    }

    Label {
        id: label1
        x: 134
        y: 124
        text: qsTr("User name")
    }

    Image {
        id: imageAvatar
        objectName: "imageAvatar"
        x: 8
        y: 160
        width: 100
        height: 100
        source: "icons/avatar_boy.png"

        MouseArea {
            id: mouseAreaAvatar
            anchors.fill: parent
        }
    }

    Label {
        id: label3
        x: 114
        y: 202
        text: qsTr("Avatar")
    }
}
