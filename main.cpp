#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include<memory>
#include"maincontroller.h"
using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    unique_ptr<maincontroller>  Controller(new maincontroller());
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("MainController", Controller.get());
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
