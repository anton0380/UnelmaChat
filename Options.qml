import QtQuick 2.7

OptionsForm {
    checkBoxTray.checked: application.checkTray
    checkBoxTray.onCheckStateChanged: {
        application.checkTray = checkBoxTray.checkState
    }
}
