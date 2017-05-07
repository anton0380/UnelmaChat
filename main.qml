import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0 // ??
import QSystemTrayIcon 1.0

ApplicationWindow {
    id: application
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    // registered tray in QML layout
    QSystemTrayIcon {
        id: systemTray

        // initiolize tray
        Component.onCompleted: {
            icon = iconTray             // set icon
            // set show hint for tray icon
            toolTip = "UnelmaChat
Open or exit program"
            show();
        }

        /* Click on icon in tray:
         * legt button mouse - open or close window application
         * right - show tray's menu
         * */
        onActivated: {
            if(reason === 1){
                trayMenu.open()//popup()
            } else {
                if(application.visibility === Window.Hidden) {
                    application.show()
                } else {
                    application.hide()
                }
            }
        }
    }

    // system tray's menu
    Menu {
        id: trayMenu

        MenuItem {
            text: qsTr("Show window")
            onTriggered: application.show()
        }

        MenuItem {
            text: qsTr("Exit")
            onTriggered: {
                systemTray.hide()
                Qt.quit()

            }
        }
    }

    // checkbox for control exit window
    CheckBox {
        id: checkTray
        anchors.centerIn: parent
        text: qsTr("Enable move to system tray on exit")
    }

    // window close
    onClosing: {
        /* if checkbox no ignore and it active,
         * then move to tray.
         * Another - quit application
         * */
        if(checkTray.checked === true){
            close.accepted = false
            application.hide()
        } else {
            // quit application
            Qt.quit()
        }
    }

    //==================

//    SwipeView {
//        id: swipeView
//        anchors.fill: parent
//        currentIndex: tabBar.currentIndex

//        Page1 {
//        }

//        Page {
//            Label {
//                text: qsTr("Second page")
//                anchors.centerIn: parent
//            }
//        }
//    }

//    footer: TabBar {
//        id: tabBar
//        currentIndex: swipeView.currentIndex
//        TabButton {
//            text: qsTr("First")
//        }
//        TabButton {
//            text: qsTr("Second")
//        }
//    }
}
