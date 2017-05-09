import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0


AvatarsForm {

    function setCurrentImagePath(source)
    {
        imagesUncheck();
        if (image.source === source) {
            image.width = 86;
            image.height = 86;
        }
        if (image1.source === source) {
            image1.width = 86;
            image1.height = 86;
        }
        if (image2.source === source) {
            image2.width = 86;
            image2.height = 86;
        }
        if (image3.source === source) {
            image3.width = 86;
            image3.height = 86;
        }
        if (image4.source === source) {
            image4.width = 86;
            image4.height = 86;
        }
        if (image5.source === source) {
            image5.width = 86;
            image5.height = 86;
        }
        if (image6.source === source) {
            image6.width = 86;
            image6.height = 86;
        }
        if (image7.source === source) {
            image7.width = 86;
            image7.height = 86;
        }
        if (image8.source === source) {
            image8.width = 86;
            image8.height = 86;
        }
        if (image9.source === source) {
            image9.width = 86;
            image9.height = 86;
        }
    }

    // get source checked image
    function getCurrentImagePath()
    {
        if (image.width !== 100)
            return image.source;
        if (image1.width !== 100)
            return image1.source;
        if (image2.width !== 100)
            return image2.source;
        if (image3.width !== 100)
            return image3.source;
        if (image4.width !== 100)
            return image4.source;
        if (image5.width !== 100)
            return image5.source;
        if (image6.width !== 100)
            return image6.source;
        if (image7.width !== 100)
            return image7.source;
        if (image8.width !== 100)
            return image8.source;
        if (image9.width !== 100)
            return image9.source;
        return "";
    }

    // all images no checked
    function imagesUncheck() {
        image.width = 100;
        image.height = 100;
        image1.width = 100;
        image1.height = 100;
        image2.width = 100;
        image2.height = 100;
        image3.width = 100;
        image3.height = 100;
        image4.width = 100;
        image4.height = 100;
        image5.width = 100;
        image5.height = 100;
        image6.width = 100;
        image6.height = 100;
        image7.width = 100;
        image7.height = 100;
        image8.width = 100;
        image8.height = 100;
        image9.width = 100;
        image9.height = 100;
    }

    mouseArea.onClicked: {
        imagesUncheck();
        image.width = 86;
        image.height = 86;
    }
    mouseArea1.onClicked: {
        imagesUncheck();
        image1.width = 86;
        image1.height = 86;
    }
    mouseArea2.onClicked: {
        imagesUncheck();
        image2.width = 86;
        image2.height = 86;
    }
    mouseArea3.onClicked: {
        imagesUncheck();
        image3.width = 86;
        image3.height = 86;
    }
    mouseArea4.onClicked: {
        imagesUncheck();
        image4.width = 86;
        image4.height = 86;
    }
    mouseArea5.onClicked: {
        imagesUncheck();
        image5.width = 86;
        image5.height = 86;
    }
    mouseArea6.onClicked: {
        imagesUncheck();
        image6.width = 86;
        image6.height = 86;
    }
    mouseArea7.onClicked: {
        imagesUncheck();
        image7.width = 86;
        image7.height = 86;
    }
    mouseArea8.onClicked: {
        imagesUncheck();
        image8.width = 86;
        image8.height = 86;
    }
    mouseArea9.onClicked: {
        imagesUncheck();
        image9.width = 86;
        image9.height = 86;
    }
    //rectanglevar.border.width: 5
    //mouseAreaTest2.cursorShape: Qt.PointingHandCursor



    buttonOk.onClicked: {
        imageAvatar.source = getCurrentImagePath();
        avatarsdlg.close();
    }
    buttonCancel.onClicked: {
        avatarsdlg.close()
    }

    mouseArea.cursorShape: Qt.PointingHandCursor
    mouseArea1.cursorShape: Qt.PointingHandCursor
    mouseArea2.cursorShape: Qt.PointingHandCursor
    mouseArea3.cursorShape: Qt.PointingHandCursor
    mouseArea4.cursorShape: Qt.PointingHandCursor
    mouseArea5.cursorShape: Qt.PointingHandCursor
    mouseArea6.cursorShape: Qt.PointingHandCursor
    mouseArea7.cursorShape: Qt.PointingHandCursor
    mouseArea8.cursorShape: Qt.PointingHandCursor
    mouseArea9.cursorShape: Qt.PointingHandCursor
}
