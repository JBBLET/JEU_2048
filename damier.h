#ifndef DAMIER_H
#define DAMIER_H

#include <iostream>
#include <stdlib.h>
#include <time.h>
using namespace std;

class damier
{
public :
    damier(int l);
    ~damier();

    void print();
    void random(); //Permet d'ajouter de manière aléatoire des 2 et des 4 sur les cases vides de la grille
    void mouvement_haut();
    void mouvement_bas();
    void mouvement_droit();
    void mouvement_gauche();

private :
    int L;
    int** T;
    float const p=0.2;

    void alloc(int taille);
    void free();



};

#endif // DAMIER_H
