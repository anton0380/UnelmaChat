#ifndef SETTINGS_H
#define SETTINGS_H

#include <QObject>
#include <QSettings>

class Settings : public QObject
{
    Q_OBJECT
public:
    explicit Settings(QObject *parent = 0);
    ~Settings();

    QString getUserName();
    void setUserName(QString userName);
    QString getAvatar();
    void setAvatar(QString avatar);
    QString getTcpPort();
    void setTcpPort(QString tcpPort);

    // set or get value
    void setValue(QString group, QString key, QVariant value);
    QVariant getValue(QString group, QString key, QVariant defaultValue);


signals:

public slots:

private:
    QSettings *m_settings;
};

#endif // SETTINGS_H
