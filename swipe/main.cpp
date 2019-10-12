#include "treemodel.h"
#include "treeelement.h"

#include <QFontDatabase>
#include <QDebug>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

static void registertypes(){
    qmlRegisterType<TreeElement>("foo", 1, 0, "TreeElement");
    qmlRegisterType<TreeModel>("foo", 1, 0, "TreeModel");
}

Q_COREAPP_STARTUP_FUNCTION(registertypes)

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QFontDatabase fontDatabase;
    if (fontDatabase.addApplicationFont(":/fonts/fontello.ttf") == -1)
        qWarning() << "Failed to load fontello.ttf";


    //最后一个可视窗口关闭时，不退出程序
    app.setQuitOnLastWindowClosed(false);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
