//#include <QGuiApplication>
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QIcon>
#include <QSystemTrayIcon>

// user data type for work with icon in tray QML
Q_DECLARE_METATYPE(QSystemTrayIcon::ActivationReason)

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    //QGuiApplication app(argc, argv);
    QApplication app(argc, argv);


    QQmlApplicationEngine engine;
    // registered QSystemTrayIcon as QML object
    qmlRegisterType<QSystemTrayIcon>("QSystemTrayIcon", 1, 0, "QSystemTrayIcon");
    // registered in QML data type for data of click icon
    qRegisterMetaType<QSystemTrayIcon::ActivationReason>("ActivationReason");
    // set icon in context
    engine.rootContext()->setContextProperty("iconTray", QIcon(":/icons/tray-online.png"));
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
