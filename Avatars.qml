import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0


AvatarsForm {

    property int avatarSizeChoose: 86;
    property int avatarSize: 100;

    function setCurrentImagePath(source)
    {
        imagesUncheck();
        if (image.source === source) {
            image.width = avatarSizeChoose;
            image.height = avatarSizeChoose;
        }
        if (image1.source === source) {
            image1.width = avatarSizeChoose;
            image1.height = avatarSizeChoose;
        }
        if (image2.source === source) {
            image2.width = avatarSizeChoose;
            image2.height = avatarSizeChoose;
        }
        if (image3.source === source) {
            image3.width = avatarSizeChoose;
            image3.height = avatarSizeChoose;
        }
        if (image4.source === source) {
            image4.width = avatarSizeChoose;
            image4.height = avatarSizeChoose;
        }
        if (image5.source === source) {
            image5.width = avatarSizeChoose;
            image5.height = avatarSizeChoose;
        }
        if (image6.source === source) {
            image6.width = avatarSizeChoose;
            image6.height = avatarSizeChoose;
        }
        if (image7.source === source) {
            image7.width = avatarSizeChoose;
            image7.height = avatarSizeChoose;
        }
        if (image8.source === source) {
            image8.width = avatarSizeChoose;
            image8.height = avatarSizeChoose;
        }
        if (image9.source === source) {
            image9.width = avatarSizeChoose;
            image9.height = avatarSizeChoose;
        }
    }

    // get source checked image
    function getCurrentImagePath()
    {
        if (image.width !== avatarSize)
            return image.source;
        if (image1.width !== avatarSize)
            return image1.source;
        if (image2.width !== avatarSize)
            return image2.source;
        if (image3.width !== avatarSize)
            return image3.source;
        if (image4.width !== avatarSize)
            return image4.source;
        if (image5.width !== avatarSize)
            return image5.source;
        if (image6.width !== avatarSize)
            return image6.source;
        if (image7.width !== avatarSize)
            return image7.source;
        if (image8.width !== avatarSize)
            return image8.source;
        if (image9.width !== avatarSize)
            return image9.source;
        return "";
    }

    // all images no checked
    function imagesUncheck() {
        image.width = avatarSize;
        image.height = avatarSize;
        image1.width = avatarSize;
        image1.height = avatarSize;
        image2.width = avatarSize;
        image2.height = avatarSize;
        image3.width = avatarSize;
        image3.height = avatarSize;
        image4.width = avatarSize;
        image4.height = avatarSize;
        image5.width = avatarSize;
        image5.height = avatarSize;
        image6.width = avatarSize;
        image6.height = avatarSize;
        image7.width = avatarSize;
        image7.height = avatarSize;
        image8.width = avatarSize;
        image8.height = avatarSize;
        image9.width = avatarSize;
        image9.height = avatarSize;
    }

    mouseArea.onClicked: {
        imagesUncheck();
        image.width = avatarSizeChoose;
        image.height = avatarSizeChoose;
    }
    mouseArea1.onClicked: {
        imagesUncheck();
        image1.width = avatarSizeChoose;
        image1.height = avatarSizeChoose;
    }
    mouseArea2.onClicked: {
        imagesUncheck();
        image2.width = avatarSizeChoose;
        image2.height = avatarSizeChoose;
    }
    mouseArea3.onClicked: {
        imagesUncheck();
        image3.width = avatarSizeChoose;
        image3.height = avatarSizeChoose;
    }
    mouseArea4.onClicked: {
        imagesUncheck();
        image4.width = avatarSizeChoose;
        image4.height = avatarSizeChoose;
    }
    mouseArea5.onClicked: {
        imagesUncheck();
        image5.width = avatarSizeChoose;
        image5.height = avatarSizeChoose;
    }
    mouseArea6.onClicked: {
        imagesUncheck();
        image6.width = avatarSizeChoose;
        image6.height = avatarSizeChoose;
    }
    mouseArea7.onClicked: {
        imagesUncheck();
        image7.width = avatarSizeChoose;
        image7.height = avatarSizeChoose;
    }
    mouseArea8.onClicked: {
        imagesUncheck();
        image8.width = avatarSizeChoose;
        image8.height = avatarSizeChoose;
    }
    mouseArea9.onClicked: {
        imagesUncheck();
        image9.width = avatarSizeChoose;
        image9.height = avatarSizeChoose;
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
