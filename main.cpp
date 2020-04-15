#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QQmlContext>
#include <QObject>
#include "jeu.h"
#include <random>

int main(int argc, char *argv[])
{
    //Réinitialisation de la séquence aléatoire
    srand (time(NULL));

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Jeu partie;
    engine.rootContext()->setContextProperty("vueObjetGame", &partie);

    const QUrl mainQml(QStringLiteral("qrc:/main.qml"));
    engine.load(mainQml);

    return app.exec();
}
