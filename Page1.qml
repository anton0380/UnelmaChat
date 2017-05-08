import QtQuick 2.7

Page1Form {
    checkDelegate.onCanceled: {
    }
    button1.onClicked: {
        console.log("Button Pressed. Entered text: " + textField1.text);
    }
}
