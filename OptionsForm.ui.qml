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
        y: 335
        text: qsTr("Apply")
    }

    CheckBox {
        id: checkBoxTray
        x: 8
        y: 66
        text: qsTr("To tray on push exit")
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 400
        height: 60
        color: "#ffffff"
    }

    TextField {
        id: textFieldPort
        x: 8
        y: 131
        text: qsTr("12345")
    }

    Label {
        id: label
        x: 134
        y: 144
        text: qsTr("TCP port")
    }

    TextField {
        id: textFieldUserName
        objectName: "textFieldUserName"
        x: 8
        y: 180
    }

    Label {
        id: label1
        x: 134
        y: 193
        text: qsTr("User name")
    }

    Image {
        id: imageAvatar
        x: 8
        y: 229
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
        x: 121
        y: 271
        text: qsTr("Avatar")
    }
}
