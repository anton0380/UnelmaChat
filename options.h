#ifndef OPTIONS_H
#define OPTIONS_H

#include <QObject>
#include <QQmlContext>

class Options : public QObject
{
    Q_OBJECT
public:
    explicit Options(QObject *root, QObject *parent = 0);


signals:

public slots:
    void apply();//const QString &msg);


private:
    QQmlContext * m_context;
    QObject * m_root;
};

#endif // OPTIONS_H
