.pragma library


function getRandomAvatarPath() {
    // avatar path
    var avatarPath = ["qrc:/icons/avatar_boy.png",
                      "qrc:/icons/avatar_female.png",
                      "qrc:/icons/avatar_girl.png",
                      "qrc:/icons/avatar_male.png",
                      "qrc:/icons/avatar_malecostume.png",
                      "qrc:/icons/avatar_matureman1.png",
                      "qrc:/icons/avatar_matureman2.png",
                      "qrc:/icons/avatar_maturewoman.png",
                      "qrc:/icons/avatar_supportfemale.png",
                      "qrc:/icons/avatar_supportmale.png"];
    var rand = Math.floor(Math.random() * avatarPath.length);
    return avatarPath[rand];
}
function getRandomAvatarPathLittle() {
    return getRandomAvatarPath().substring(5);
}

function getRandomName() {
    var name = ["Terminator",
                "Frost",
                "Zorro",
                "Robocop",
                "Bruce Lee",
                "Tarantino",
                "Mozart",
                "Einstein"];
    var rand = Math.floor(Math.random() * name.length);
    return name[rand];
}


