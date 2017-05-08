import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: item1
    property alias textField1: textField1
    property alias button1: button1
    property alias checkDelegate: checkDelegate

    RowLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        anchors.top: parent.top

        TextField {
            id: textField1
            renderType: Text.QtRendering
            placeholderText: qsTr("Text Field")
        }

        Button {
            id: button1
            text: qsTr("Press Me")
        }
    }

    TextEdit {
        id: textEdit
        x: 171
        y: 327
        width: 80
        height: 20
        text: qsTr("Text Edit")
        font.pixelSize: 12
    }

    Text {
        id: text1
        x: 103
        y: 316
        text: qsTr("Text")
        font.pixelSize: 12
    }

    TextInput {
        id: textInput
        x: 135
        y: 257
        width: 80
        height: 20
        text: qsTr("asdf")
        font.pixelSize: 12
    }

    TextField {
        id: textField
        x: 245
        y: 246
        text: qsTr("Text Field")
    }

    TextArea {
        id: textArea
        x: 414
        y: 246
        text: qsTr("Text Area")
    }

    ToolBar {
        id: toolBar
        x: 140
        y: 384
        width: 360

        ToolButton {
            id: toolButton
            x: 13
            y: 0
            text: qsTr("Tool Button")
        }
    }

    ItemDelegate {
        id: itemDelegate
        x: 74
        y: 20
        width: 119
        height: 152
        text: qsTr("Item Delegate")

        Button {
            id: button
            x: 10
            y: 9
            text: qsTr("Button")
        }

        Button {
            id: button2
            x: 43
            y: 88
            text: qsTr("Button")
        }
    }

    CheckDelegate {
        id: checkDelegate
        x: 350
        y: 187
        text: qsTr("Check Delegate")
        transformOrigin: Item.Center
    }
}
