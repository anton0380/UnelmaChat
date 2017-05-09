#include "settings.h"
#include <QCoreApplication>
#include <QDebug>

Settings::Settings(QObject *parent) : QObject(parent)
{
    qDebug() << "Settings create";
    QString fileFullName = QCoreApplication::applicationDirPath()+"/config.ini";
    qDebug() << "Settings file : " + fileFullName;
    m_settings = new QSettings(fileFullName, QSettings::IniFormat, this);
}

Settings::~Settings()
{
    qDebug() << "Settings destroy";
}
