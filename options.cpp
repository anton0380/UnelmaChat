#include "options.h"
#include "config.h"
#include "settings.h"
#include <QDebug>

Options::Options(QObject *root, QObject *parent) : QObject(parent), m_root(root)
{
    //QObject* field1 = m_context->findChild<QObject*>("tst");
    //field1->setProperty("text", "asdf");
    //textFieldUserName
    //QString str1=(field1->property("text")).toString();
    QObject *userName = m_root->findChild<QObject*>("textFieldUserName");
    QObject *avatar = m_root->findChild<QObject*>("imageAvatar");
    QObject *tray = m_root->findChild<QObject*>("checkBoxTray");
    QObject *port = m_root->findChild<QObject*>("textFieldPort");
    settings.beginGroup("optinons");
    userName->setProperty("text", settings.value("userName", DEFAULT_USER_NAME));
    avatar->setProperty("source", settings.value("avatar", DEFAULT_AVATAR_PATH));
    tray->setProperty("checked", settings.value("tray", DEFAULT_CHECKED_TRAY));
    port->setProperty("text", settings.value("port", DEFAULT_TCP_PORT));
    settings.endGroup();
    //QObject::connect(m_root, SIGNAL(applyOptions(QString)), this, SLOT(apply(QString)));
    QObject::connect(m_root, SIGNAL(applyOptions()), SLOT(apply()));
}

void Options::apply()
{
    qDebug() << "Apply options";
    QObject *userName = m_root->findChild<QObject*>("textFieldUserName");
    QObject *avatar = m_root->findChild<QObject*>("imageAvatar");
    QObject *tray = m_root->findChild<QObject*>("checkBoxTray");
    QObject *port = m_root->findChild<QObject*>("textFieldPort");
    settings.beginGroup("optinons");
    settings.setValue("userName", userName->property("text").toString());
    settings.setValue("avatar", avatar->property("source").toString());
    settings.setValue("tray", tray->property("checked").toBool());
    settings.setValue("port", port->property("text").toInt());
    qDebug() << "User name : " << userName->property("text").toString();
    qDebug() << "Avatar : " << avatar->property("source").toString();
    qDebug() << "Tray : " << tray->property("checked").toBool();
    qDebug() << "Port : " << port->property("text").toInt();
    settings.endGroup();
}
