import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: chatItem
    width: 400
    height: 400

    //anchors.fill: parent
    ListView {
        id: listView
        x: 8
        y: 8
        width: 173
        height: 190
        delegate: Item {
            x: 5
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
            }
        }
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
    }

    Button {
        id: button
        x: 8
        y: 423
        text: qsTr("Add new")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 17
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
