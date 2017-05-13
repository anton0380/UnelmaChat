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
    settings.beginGroup("optinons");
    userName->setProperty("text", settings.value("userName", DEFAULT_USER_NAME));
    settings.endGroup();

    //QObject::connect(m_root, SIGNAL(applyOptions(QString)), this, SLOT(apply(QString)));
    QObject::connect(m_root, SIGNAL(applyOptions()), SLOT(apply()));
}

void Options::apply()
{
    qDebug() << "Apply options";
    QObject *userName = m_root->findChild<QObject*>("textFieldUserName");
    settings.beginGroup("optinons");
    settings.setValue("userName", userName->property("text").toString());
    qDebug() << userName->property("text").toString();
    settings.endGroup();
}
