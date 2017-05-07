import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0

ApplicationWindow {
    id: application
    visible: true
    width: 640
    height: 480
    title: qsTr("Unelma Chat")

    // for ignore checkbox
    property bool ignoreCheck: false

    /* Connections
     * Connect to system tray
     * */
    Connections {
        target: systemTray
        // signal - show window
        onSignalShow: {
            application.show();
        }

        // signal - close app, ignore checkbox
        onSignalQuit: {
            ignoreCheck = true
            close();
        }

        // show/hidden window (click on system tray)
        onSignalIconActivated: {
            if(application.visibility === Window.Hidden) {
                application.show()
            } else {
                application.hide()
            }
        }
    }

    // test checkbox
    CheckBox {
        id: checkTray
        anchors.centerIn: parent
        text: qsTr("To tray on push exit")
    }

    // on window exit
    onClosing: {
        /* if checkbox not ignore and checket,
         * hidden window.
         * another - close window
         * */
        if(checkTray.checked === true && ignoreCheck === false){
            close.accepted = false
            application.hide()
        } else {
            // quit application
            Qt.quit()
        }
    }

    //--------------------------------

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
