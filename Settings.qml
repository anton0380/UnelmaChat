import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0


Item {
    id: settings
    //property bool checkTray: true

    Column {
        id: settingsLayout
        //spacing: 5
        //anchors.margins: 5
        //x: 94
        //y: 84
        //width: 100
        //height: 100
        //anchors.top: parent.top
        //anchors.left: parent.left
        //anchors.fill: parent
        anchors.top: parent.top
        anchors.topMargin: 60
        anchors.left: parent.left
        anchors.leftMargin: 10


        Label {
            text: qsTr("Settings page")
            //anchors.centerIn: parent
        }

        Label {
            text: qsTr("Settings page")
            //anchors.centerIn: parent
        }
        TextField {
            id: textField12
            placeholderText: qsTr("Text Field")
        }


        // test checkbox
        CheckBox {
            id: checkBoxTray
            //anchors.centerIn: parent
            text: qsTr("To tray on push exit")
            onCheckStateChanged: application.checkTray = checkBoxTray.checkState
        }

        Button {
            id: button12
            text: qsTr("Apply")
        }

    }

}


