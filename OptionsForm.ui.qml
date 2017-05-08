import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: options
    width: 400
    height: 400
    property alias checkBoxTray: checkBoxTray

    Button {
        id: buttonApply
        x: 8
        y: 229
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
        id: textField
        x: 8
        y: 131
        text: qsTr("12345")
    }

    Label {
        id: label
        x: 134
        y: 144
        text: qsTr("TCP Port")
    }

    TextField {
        id: textField1
        x: 8
        y: 180
        text: qsTr("Anonimous")
    }

    Label {
        id: label1
        x: 134
        y: 192
        text: qsTr("User name")
    }
}
