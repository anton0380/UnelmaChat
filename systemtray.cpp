#include "systemtray.h"
#include <QDebug>
#include <QMenu>

SystemTray::SystemTray(QObject *parent) : QObject(parent)
{
    // create context menu
    QMenu *trayIconMenu = new QMenu();

    QAction * viewWindow = new QAction(tr("Open window"), this);
    QAction * quitAction = new QAction(tr("Exit"), this);

    // connect signals menu to signals QML
    connect(viewWindow, &QAction::triggered, this, &SystemTray::signalShow);
    connect(quitAction, &QAction::triggered, this, &SystemTray::signalQuit);

    trayIconMenu->addAction(viewWindow);
    trayIconMenu->addAction(quitAction);

    // init tray icon and init show hidden message
    m_trayIcon = new QSystemTrayIcon();
    m_trayIcon->setContextMenu(trayIconMenu);
    m_trayIcon->setIcon(QIcon(":/icons/tray-online.png"));
    m_trayIcon->show();
    m_trayIcon->setToolTip(tr("UnelmaChat" "\n"
                         "Open or exit program"));

    // connect tray icon click signal to slot
    connect(m_trayIcon, SIGNAL(activated(QSystemTrayIcon::ActivationReason)),
            this, SLOT(iconActivated(QSystemTrayIcon::ActivationReason)));
}

SystemTray::~SystemTray()
{
    qDebug() << "System tray destroy";
}

// click on icon in tray
void SystemTray::iconActivated(QSystemTrayIcon::ActivationReason reason)
{
    switch (reason){
    case QSystemTrayIcon::Trigger:
        // icon clicked, send to QML layout
        emit signalIconActivated();
        break;
    default:
        break;
    }
}

void SystemTray::hideIconTray()
{
    m_trayIcon->hide();
}
