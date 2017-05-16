import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "ChatLib.js" as Lib

Item {
    id: chatItem
    width: 400
    height: 400
    property alias listViewConnectedUsers: listViewConnectedUsers
    property alias buttonAddNew: buttonAddNew
    property alias listModelConnectedUsers: listModelConnectedUsers
    //property string nameValue: "temptt"

    //anchors.fill: parent
    ListView {
        id: listViewConnectedUsers
        x: 8
        width: 173
        transformOrigin: Item.Center
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 117
        delegate: ConnectedUser {
            //property string nameValue: "test name"
            //name: nameValue
            /*x: 5
            width: 80
            height: 40
            Row {
                id: row1
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                }
                spacing: 10
            }*/
        }
        model: ListModel {
            id : listModelConnectedUsers
//            ListElement {
//                name: "Grey"
//                avatar: "icons/avatar_boy.png"
//            }

//            ListElement {
//                name: "Red"
//                avatar: "icons/avatar_female.png"
//            }

//            ListElement {
//                name: "Blue"
//                avatar: "icons/avatar_girl.png"
//            }

//            ListElement {
//                name: "Green"
//                avatar: "icons/avatar_male.png"
//            }
        }
    }

    Button {
        id: buttonAddNew
        x: 8
        y: 423
        text: qsTr("Add new")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 17
        /*onClicked: {
            console.log("Add new element111");
            listModelConnectedUsers.append({name: "Yes", avatar: "icons/avatar_boy.png"});
        }*/

    }

    Button {
        id: button1
        x: 8
        y: 377
        text: qsTr("Button")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 63
    }
}
