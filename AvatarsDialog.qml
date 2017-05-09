import QtQuick 2.7
//import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.1
//import QtQuick.Dialogs 1.2

Dialog {
    visible: true
    title: qsTr("Select Avatar")
    function setAvatarSource(source) {
        avatarsout.setCurrentImagePath(source)
    }
    contentItem: Rectangle {
        //color: "lightskyblue"
        implicitWidth: 440
        implicitHeight: 340
        Avatars {
            id: avatarsout
        }

//        Text {
//            text: "Hello blue sky!"
//            color: "navy"
//            anchors.centerIn: parent
//        }
    }

}
