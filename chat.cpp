#include "chat.h"
#include "settings.h"
#include <QDebug>

Chat::Chat(QObject *parent) : QObject(parent)
{
    qDebug() << "Chat create";
}

Chat::~Chat()
{
    qDebug() << "Chat destroy";
}
