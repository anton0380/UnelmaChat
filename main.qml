import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0
//import QtQuick.Controls.Material 2.0
//import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: application
    visible: true
    width: 640
    height: 480
    title: qsTr("Unelma Chat")
    //Material.theme: Material.Light
    //Material.primary: Material.BlueGray
    //Material.accent: Material.Teal

    signal applyOptions()//string msg)

    // for ignore checkbox
    property bool ignoreCheck: false
    property bool checkTray: false//true

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


    header: Rectangle {
        TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex
            TabButton {
                text: qsTr("Chat")
            }
            TabButton {
                text: qsTr("Settings")
            }
        }
    }

    // on window exit
    onClosing: {
        /* if checkbox not ignore and checket,
         * hidden window.
         * another - close window
         * */
        if(checkTray === true && ignoreCheck === false){
            close.accepted = false
            application.hide()
        } else {
            // quit application
            Qt.quit()
        }
    }



    //--------------------------------
        SwipeView {
            id: swipeView
            anchors.fill: parent
            anchors.topMargin: 60
            currentIndex: tabBar.currentIndex
            Chat {
            }

            //Settings {
            Options {
            //Page1 {
            }
        }

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


