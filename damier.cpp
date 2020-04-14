#include "damier.h"
#include <iostream>
#include <stdlib.h>
#include <time.h>

using namespace std;

damier::damier(int l)
{
    alloc(l);

    for (int i=0;i<L;i++){
        for (int j=0;j<L;j++){
            T[i][j]=0;
        }
    }

}
damier::damier()
{
    alloc(4);
    for (int i=0;i<L;i++){
        for (int j=0;j<L;j++){
            T[i][j]=0;
        }
    }
}
damier::damier(damier &D)
{
    int longueur=D.L;
    alloc(longueur);

    for (int i=0;i<longueur;i++){
        for (int j=0;j<longueur;j++){
            T[i][j]=D.T[i][j];
        }
    }
}
void damier::alloc(int taille){
    L = taille;
    T = new int*[L];
    for(int i=0; i<L; i++)
        T[i] = new int[L];
}

damier::~damier(){
    if (T != NULL) {
        free();
        T = NULL;
    }
}

void damier::free(){
    for (int i=0; i<L; i++) {
        delete [] T[i];
    }
    delete [] T;
}

void damier::resize(int Taille)
{
    free();
    alloc(Taille);
    for (int i=0;i<L;i++){
        for (int j=0;j<L;j++){
            T[i][j]=0;
        }
    }

}
void damier::random(){

    //On compte le nombre de zéros
    int nbz=0; //Nombre de zéros sur la grille
    for (int i=0; i<L; i++) {
        for (int j=0;j<L;j++){
            if (T[i][j]==0) {
                nbz++;
            }
        }


    }

    //On choisit ensuite une case à zéro qui recevra un deux ou un quatre

    int v1 = rand() %  nbz;

    //On choisit ensuite si le chiffre sera un deux ou un quatre
    //On a assigné 20% de chance pour que ça soit un 4
    int v2 = rand() % 100+1;
    int valeur; //Valeur sera égale soit à 2 soit à 4

    if (v2<p*100){
        valeur=4;
    }
    else {
        valeur=2;
    }

    //On change la valeur dans le damier
    int compteur=0;

    for (int i=0;i<L;i++){
        for (int j=0;j<L;j++){
            if (T[i][j]==0){
                compteur++;
            }
            if (compteur-1==v1){
                T[i][j]=valeur;
                compteur=L^2+10;
            }
        }

    }

}
void damier::mouvement_haut(){
    for (int j=0;j<L;j++){
         int i=0,k=0,val=0;
         while(i<L){
             while(T[i][j]==0){
                 i++;
             }
             if(T[i][j]==val){
                 T[k-1][j]=2*val;
                 val=0;
                 T[i][j]=0;
             }
             T[k][j]=T[i][j];
             val=T[i][j];
             if(k!=i){T[i][j]=0;}
             k++;
         }
    }

}
void damier::mouvement_bas(){
    for (int j=L;j>-1;j--){
         int i=L,k=L,val=0;
         while(i>-1){
             while(T[i][j]==0){
                 i--;
             }
             if(T[i][j]==val){
                 T[k+1][j]=2*val;
                 val=0;
                 T[i][j]=0;
             }
             T[k][j]=T[i][j];
             val=T[i][j];
             if(k!=i){T[i][j]=0;}
             k--;
         }
    }

}
void damier::mouvement_gauche(){
    for (int i=0;i<L;i++){
         int j=0,k=0,val=0;
         while(j<L){
             while(T[i][j]==0){
                 j++;
             }
             if(T[i][j]==val){
                 T[i][k-1]=2*val;
                 val=0;
                 T[i][j]=0;
             }
             T[k][j]=T[i][j];
             val=T[i][j];
             if(k!=j){T[i][j]=0;}
             k++;
         }
    }

}
void damier::mouvement_droit(){
    for (int i=L;i>-1;i--){
         int j=L,k=L,val=0;
         while(j>-1){
             while(T[i][j]==0){
                 j--;
             }
             if(T[i][j]==val){
                 T[i][k+1]=2*val;
                 val=0;
                 T[i][j]=0;
             }
             T[k][j]=T[i][j];
             val=T[i][j];
             if(k!=j){T[i][j]=0;}
             k--;
         }
    }

}

void damier::print(){
    cout << endl;
    for(int i=0; i<L; i++) {
        cout << endl;
        for(int j=0; j<L; j++)
            cout << T[i][j] << ", ";
    }
}
int damier::get_value(int index){
    return T[index/L][index%L];
}

//int* damier::get_pointeur(int index){
//    return &T[index/L][index%L];
//}

bool damier::peut_bouger()
{
    for(int i=0;i<L-1;i++){
        for(int j=0;j<L-1;j++){
            if(T[i+1][j]!=T[i][j]||T[i][j]==0){return true;}
            if(T[i][j+1]!=T[i][j]||T[i][j]==0){return true;}
        }
     }
    for(int i=0;i<L-1;i++){
        if(T[i+1][L-1]!=T[i][L-1]||T[i][L-1]==0){return true;}
        if(T[L-1][i+1]!=T[L-1][i]||T[L-1][i]==0){return true;}
    }
    return false;
}
int damier::sum()
{
    int somme=0;
    for(int i=0;i<L;i++){
        for(int j=0;j<L;j++){
            somme+=T[i][j];
        }
    }
    return somme;
}


