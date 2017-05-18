import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    width: 370
    height: 55
    property alias textFieldPort: textFieldPort

    TextField {
        id: textFieldIp
        x: 24
        y: 9
        width: 100
        height: 40
        text: ip
    }

    Label {
        id: label
        x: 8
        y: 22
        text: qsTr("IP")
    }

    TextField {
        id: textFieldPort
        x: 198
        y: 9
        width: 58
        height: 40
        text: port
    }

    Label {
        id: label1
        x: 130
        y: 22
        text: qsTr("TCP port")
    }

    Button {
        id: buttonDelete
        x: 262
        y: 9
        text: qsTr("Delete")
    }
}
