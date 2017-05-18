import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "components"

Item {
    id: options
    width: 600
    height: 600
    property alias buttonAdd: buttonAdd
    property alias textFieldUserName: textFieldUserName
    property alias buttonApply: buttonApply
    property alias mouseAreaAvatar: mouseAreaAvatar
    property alias imageAvatar: imageAvatar
    property alias checkBoxTray: checkBoxTray
    property alias textFieldPort: textFieldPort
    property alias listViewIpConnects: listViewIpConnects
    property alias listModelIpConnects: listModelIpConnects

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

    GroupBox {
        id: groupBox
        x: 205
        width: 364
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.top: parent.top
        anchors.topMargin: 8
        title: qsTr("IP connects")

        ListView {
            id: listViewIpConnects
            x: 0
            width: 301
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 54
            anchors.top: parent.top
            anchors.topMargin: 0
            delegate: UseIp {
            }
            model: ListModel {
                id: listModelIpConnects
                ListElement {
                    name: "Grey"
                    colorCode: "grey"
                    ip: "192.0.0.2"
                    port: "9911"
                }

                ListElement {
                    name: "Red"
                    colorCode: "red"
                    ip: "192.0.0.3"
                    port: "9912"
                }

                ListElement {
                    name: "Blue"
                    colorCode: "blue"
                    ip: "192.0.0.4"
                    port: "9913"
                }

                ListElement {
                    name: "Green"
                    colorCode: "green"
                    ip: "192.0.0.5"
                    port: "9914"
                }
            }
        }

        Button {
            id: buttonAdd
            x: 0
            y: 198
            text: qsTr("Add")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
        }
    }
}
