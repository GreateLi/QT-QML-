#ifndef MAINCONTROLLER_H
#define MAINCONTROLLER_H

#include <QObject>

class maincontroller : public QObject
{
    Q_OBJECT
public:
    explicit maincontroller(QObject *parent = nullptr);

    Q_INVOKABLE bool login(QString username,QString password);
signals:

public slots:
};

#endif // MAINCONTROLLER_H
