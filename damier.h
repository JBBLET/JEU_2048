#ifndef DAMIER_H
#define DAMIER_H

#include <iostream>
#include <stdlib.h>
#include <time.h>
#include <QObject>
#include <QtQml>
#include <QQmlContext>
using namespace std;

class damier : public QObject
{
public :
    damier(int l);
    ~damier();

    void print();
    void random(); //Permet d'ajouter de manière aléatoire des 2 et des 4 sur les cases vides de la grille
    // void mouvement_haut();
    // void mouvement_bas();
    void mouvement_droit();
    void mouvement_gauche();

    QString readDamier1();
    Q_PROPERTY(QString case1QML READ readDamier1 NOTIFY damierChanged)
    Q_INVOKABLE void mouvement_haut();
    Q_INVOKABLE void mouvement_bas();

private :
    int L;
    int** T;
    float const p=0.2;

    void alloc(int taille);
    void free();


signals :
    void damierChanged();


};

#endif // DAMIER_H
