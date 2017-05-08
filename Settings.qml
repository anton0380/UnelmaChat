import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0


Item {
    id: settings
    //property bool checkTray: true

    Row {
        anchors.top: parent.top
        anchors.topMargin: 60
        anchors.left: parent.left
        anchors.leftMargin: 10

    Column {
        id: settingsLayout

        Label {
            text: qsTr("TCP port")
            //anchors.centerIn: parent
        }

        //spacing: 5
        //anchors.margins: 5
        //x: 94
        //y: 84
        //width: 100
        //height: 100
        //anchors.top: parent.top
        //anchors.left: parent.left
        //anchors.fill: parent

        // test checkbox
        CheckBox {
            id: checkBoxTray
            //anchors.centerIn: parent
            text: qsTr("To tray on push exit")
            checked: application.checkTray
            onCheckStateChanged: application.checkTray = checkBoxTray.checkState
        }

        Row {
            TextInput {
                id: inputTCPPort
                width: 80
                height: 20
                text: qsTr("12345")
                font.pixelSize: 12

                //placeholderText: qsTr("Text Field")
            }


            Label {
                text: qsTr("TCP port")
                //anchors.centerIn: parent
            }
        }

        Row {
            TextInput {
                id: inputUserName
                width: 80
                height: 20
                text: qsTr("Anonimous")
                font.pixelSize: 12
            }
            Label {
                text: qsTr("User name")
            }
        }

        Button {
            id: button12
            text: qsTr("Apply")
        }

    }
    Column {
        Label {
            text: qsTr("TCP port")
            //anchors.centerIn: parent
        }

    }
    }

}


