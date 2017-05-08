#include <QApplication>
//#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "systemtray.h"
#include <QDebug>
#include "config.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    //QGuiApplication app(argc, argv);
    QApplication app(argc, argv);
    qDebug() << "Program version : " + PROGRAM_VERSION_STR;
    QQmlApplicationEngine engine;
    // for system tray
    SystemTray * systemTray = new SystemTray(&engine);
    QQmlContext * context = engine.rootContext();
    // add systemTray methods to QML context
    context->setContextProperty("systemTray", systemTray);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
