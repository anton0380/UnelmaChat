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

QString Settings::getUserName()
{

}

void Settings::setUserName(QString userName)
{

}

QString Settings::getAvatar()
{

}

void Settings::setAvatar(QString avatar)
{

}

QString Settings::getTcpPort()
{

}

void Settings::setTcpPort(QString tcpPort)
{

}

void Settings::setValue(QString group, QString key, QVariant value)
{
    m_settings->setValue(group+"/"+key, value);
}

QVariant Settings::getValue(QString group, QString key, QVariant defaultValue)
{
    m_settings->value(key,defaultValue);
}

