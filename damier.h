#ifndef DAMIER_H
#define DAMIER_H



class damier
{
public :
    damier();
    damier(int l);
    damier(damier &T);
    ~damier();
    int get_value(int index);
    int* get_pointeur(int index);
    void print();
    void random(); //Permet d'ajouter de manière aléatoire des 2 et des 4 sur les cases vides de la grille
    void mouvement_haut();
    void mouvement_bas();
    void mouvement_droit();
    void mouvement_gauche();
    void resize(int Taille);
    bool peut_bouger();
    int sum();
private :
    int L;
    int** T;
    float const p=0.2;

    void alloc(int taille);
    void free();

};

#endif // DAMIER_H
