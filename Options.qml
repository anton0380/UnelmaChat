import QtQuick 2.7

OptionsForm {
    buttonAdd.onClicked: {
        console.log("Add new Ip connects");
        listModelIpConnects.append({ip: "192.168.0.1", port: "23321"});
    }

    AvatarsDialog {
        id: avatarsdlg
    }

    buttonApply.onClicked: {
        applyOptions()//"hello")
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


