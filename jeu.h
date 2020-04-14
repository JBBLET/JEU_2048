#ifndef JEU_H
#define JEU_H
#include <QObject>
#include <QString>
#include <damier.h>
using namespace std;

class Jeu : public QObject
{
    Q_OBJECT
public:
    explicit Jeu(QObject *parent = nullptr);
    Q_INVOKABLE void start_jeu(QString L); //debut du jeu dans L on met la taille du damier selectionne par l utilisateur cette fonction est active par un bouton
    Q_INVOKABLE void mouvement_bas() ;
    Q_INVOKABLE void mouvement_haut();
    Q_INVOKABLE void mouvement_droit() ;
    Q_INVOKABLE void mouvement_gauche() ;
    QList<QString> read_damier(); //renvoie la valeur de la case reperee par l index
    QList<bool> read_visibilite();// renvoie la valeur selon si on a besion d afficher la case
    QString read_damier2(); // debug
    QString read_damier3(); // debug
    void set_damier2(int index); //debug
    void set_damier3(int index); //debug
    Q_PROPERTY(QList<QString> valeur READ read_damier NOTIFY gameChanged)
    Q_PROPERTY(QList<bool> est_visible READ read_visibilite NOTIFY gameChanged)
    // Q_PROPERTY(QString * valeur2 READ read_damier2 WRITE set_damier2 NOTIFY gameChanged) // debug
    // Q_PROPERTY(QString valeur3 READ read_damier3 WRITE set_damier3 NOTIFY gameChanged2) //debug
    Q_PROPERTY(QString score READ calcul_score NOTIFY gameChanged)
    bool test_win();
    void test_lose();
    QString calcul_score();
signals:
    void gameChanged();
    void gameChanged2();
private slots:

private:

    QList<QString> valeurs={QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0),QString::number(0)};
    QList<bool> visibilite={false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false};
    QString ecrit_case;
    // QString *valeur_pointee=NULL;
    bool jeuOn;
    damier partie;
    int Taille;
};

#endif // JEU_H
