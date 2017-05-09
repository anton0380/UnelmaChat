#ifndef CHAT_H
#define CHAT_H

#include <QObject>
#include "settings.h"

class Chat : public QObject
{
    Q_OBJECT
public:
    explicit Chat(QObject *parent = 0);
    ~Chat();

signals:

public slots:

private:
    Settings m_settings;
};

#endif // CHAT_H
