import QtQuick 2.7

OptionsForm {

    AvatarsDialog {
        id: avatarsdlg
    }

    buttonApply.onClicked: {
        //avatarsdlg.open()
}

    mouseAreaAvatar.cursorShape: Qt.PointingHandCursor
    mouseAreaAvatar.onClicked: {
        avatarsdlg.open()
}
    checkBoxTray.checked: application.checkTray
    checkBoxTray.onCheckStateChanged: {
        application.checkTray = checkBoxTray.checkState
    }
}


