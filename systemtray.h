#ifndef SYSTEMTRAY_H
#define SYSTEMTRAY_H

#include <QObject>
#include <QSystemTrayIcon>

class SystemTray : public QObject
{
    Q_OBJECT
public:
    explicit SystemTray(QObject *parent = 0);
    ~SystemTray();

signals:
    void signalIconActivated();
    void signalShow();
    void signalQuit();

private slots:
    // click on icon in tray
    void iconActivated(QSystemTrayIcon::ActivationReason reason);

public slots:
    void hideIconTray();

private:
    // object for icon in tray
    QSystemTrayIcon * m_trayIcon;
};

#endif // SYSTEMTRAY_H
