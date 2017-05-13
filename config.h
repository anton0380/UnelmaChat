#ifndef CONFIG_H
#define CONFIG_H
#include <QString>

// program version
#define PROGRAM_VERSION_MINOR 0
#define PROGRAM_VERSION_MAJOR 1
#define PROGRAM_VERSION_STR QString::number(PROGRAM_VERSION_MAJOR)+"."+QString::number(PROGRAM_VERSION_MINOR)
// port for tcp connect
#define DEFAULT_TCP_PORT 43152
#define DEFAULT_SERVER_IP "127.0.0.1"
#define DEFAULT_USER_NAME QObject::tr("Unknown")
#ifdef QT_DEBUG
    // in debug mode not necessarily default tray checked
    #define DEFAULT_CHECKED_TRAY false
#else
    #define DEFAULT_CHECKED_TRAY true
#endif

#define DEFAULT_AVATAR_PATH "qrc:/icons/avatar_boy.png"

#endif // CONFIG_H
