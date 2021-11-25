#include "maincontroller.h"

maincontroller::maincontroller(QObject *parent) : QObject(parent)
{

}

bool maincontroller::login(QString username, QString password)
{
    if(username=="lilei"&&password=="haha")
    {
        return true;
    }else
        return false;


}
