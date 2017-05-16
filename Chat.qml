import QtQuick 2.7
import "ChatLib.js" as Lib

ChatForm {
    buttonAddNew.onClicked: {
      console.log("Add new element");
     listModelConnectedUsers.append({name: Lib.getRandomName(), avatar: Lib.getRandomAvatarPath()});
}
}
