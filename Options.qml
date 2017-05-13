import QtQuick 2.7

OptionsForm {

    AvatarsDialog {
        id: avatarsdlg
    }

    buttonApply.onClicked: {
        qmlSignal("hello")
        //avatarsdlg.open()
    }

    mouseAreaAvatar.cursorShape: Qt.PointingHandCursor
    mouseAreaAvatar.onClicked: {
        avatarsdlg.open();
        avatarsdlg.setAvatarSource(imageAvatar.source)
    }
    checkBoxTray.checked: application.checkTray
    checkBoxTray.onCheckStateChanged: {
        application.checkTray = checkBoxTray.checkState;
    }
    textFieldPort.validator: IntValidator {bottom: 1024; top: 65535;}
}


