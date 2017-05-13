#include "options.h"
#include "config.h"

Options::Options(QObject *root, QObject *parent) : QObject(parent), m_root(root)
{
    //QObject* field1 = m_context->findChild<QObject*>("tst");
    //field1->setProperty("text", "asdf");
    //textFieldUserName
    //QString str1=(field1->property("text")).toString();
    QObject* field1 = m_root->findChild<QObject*>("textFieldUserName");
    field1->setProperty("text", DEFAULT_USER_NAME);
}
