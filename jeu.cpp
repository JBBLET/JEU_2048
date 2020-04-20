#include "jeu.h"
#include "damier.h"


using namespace std;
Jeu::Jeu(QObject *parent): QObject(parent)
{
    Taille=4;
    jeuOn=false;
    emit gameChanged();
}

void Jeu::start_jeu(QString L="4")
{   int nouvelle_taille = L.toInt();
    partie.resize(nouvelle_taille);
    Taille=nouvelle_taille;
    partie.random();
    jeuOn=true;
    emit gameChanged();
}
QList<QString> Jeu::read_damier()
{
    int t=Taille*Taille;
    for (int i=0;i<t;i++)
    {
        valeurs[i]=QString::number(partie.get_value(i));
    }

    return valeurs;
}


QString Jeu::read_damier3(){
    return ecrit_case;
}

void Jeu::set_damier3(int index){
    ecrit_case=partie.get_value(index);
}

QList<bool> Jeu::read_visibilite()
{   int t = Taille*Taille;
    for (int i=0;i<t;i++)
    {
        if(partie.get_value(i)==0){ visibilite[i]=false;}
        else {visibilite[i]=true;};
        }
    return visibilite;
}

bool Jeu::test_win()
{
    for(int i=0;i<Taille;i++){
        for(int j=0;j<Taille;j++){
            int value=partie.get_value(i*Taille+j);
            if(value==2048){return true;}
            }
        }
    return false;
}
void Jeu::test_lose()
{
    if(!partie.peut_bouger()){
        jeuOn=false;
        partie.resize(Taille);
    }

}

QString Jeu::calcul_score()
{
    return QString::number(partie.sum());
}
void Jeu::mouvement_bas()
{   test_lose();
    if(jeuOn){
    partie.mouvement_bas();
    emit gameChanged();
    }
}
void Jeu::mouvement_haut()
{   test_lose();
    if(jeuOn){
    partie.mouvement_haut();

    emit gameChanged();
    }
}
void Jeu::mouvement_droit()
{   test_lose();
    if(jeuOn){
    partie.mouvement_droit();

    emit gameChanged();
    }
}
void Jeu::mouvement_gauche()
{       test_lose();
    if(jeuOn){
    partie.mouvement_gauche();

    emit gameChanged();
    }
}
