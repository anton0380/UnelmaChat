#include "settings.h"
#include <QCoreApplication>
#include <QDebug>

//QCoreApplication::setOrganizationName("MySoft");
//QCoreApplication::setOrganizationDomain("mysoft.com");
//QCoreApplication::setApplicationName("Star Runner");

//qDebug() << "Settings file : " + QCoreApplication::applicationDirPath()+"/config.ini";
//QSettings settings(QCoreApplication::applicationDirPath()+"/config.ini", QSettings::IniFormat);
QSettings settings("config.ini", QSettings::IniFormat);
