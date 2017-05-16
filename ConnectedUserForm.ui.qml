import QtQuick 2.4

Item {
    width: 200
    height: 75

    //property alias name: textUserName.text
    //property alias avatar: textUserName


    Image {
        id: imageAvatar
        x: 8
        y: 8
        width: 60
        height: 60
        source: avatar
    }

    Text {
        id: textUserName
        x: 79
        y: 31
        font.pixelSize: 12
        //text: "Anonimous"
        text: name
    }
}
