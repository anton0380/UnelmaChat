#ifndef CHAT_H
#define CHAT_H

#include <QObject>
#include "settings.h"
#include "options.h"

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
    Options * m_options;
    QObject* m_root;
};

#endif // CHAT_H
