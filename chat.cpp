#include "chat.h"
#include <QDebug>
#include <QQmlApplicationEngine>

Chat::Chat(QObject *parent) : QObject(parent)
{
    qDebug() << "Chat create";
    m_root = ((QQmlApplicationEngine *)this->parent())->rootObjects()[0];
    m_options = new Options(m_root, this);

}

Chat::~Chat()
{
    qDebug() << "Chat destroy";
}
