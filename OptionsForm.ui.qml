import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: options
    width: 400
    height: 600
    property alias buttonApply: buttonApply
    property alias mouseAreaAvatar: mouseAreaAvatar
    property alias imageAvatar: imageAvatar
    property alias checkBoxTray: checkBoxTray

    Button {
        id: buttonApply
        x: 8
        y: 403
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
        id: textField1
        x: 8
        y: 243
        text: qsTr("Anonimous")
    }

    Label {
        id: label1
        x: 134
        y: 251
        text: qsTr("User name")
    }

    TextField {
        id: textFieldConnectPort
        x: 8
        y: 180
        text: qsTr("12345")
    }

    Label {
        id: label2
        x: 134
        y: 193
        text: qsTr("TCP connect port (for test)")
    }

    Image {
        id: imageAvatar
        x: 8
        y: 297
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
        x: 123
        y: 339
        text: qsTr("Avatar")
    }
}
