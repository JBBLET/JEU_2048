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
    Q_INVOKABLE void mouvement_bas();
    Q_INVOKABLE void mouvement_haut();
    Q_INVOKABLE void mouvement_droit();
    Q_INVOKABLE void mouvement_gauche();
    QList<QString> read_damier(); //renvoie la valeur de la case reperee par l index
    QList<bool> read_visibilite();// renvoie la valeur selon si on a besion d afficher la case
    Q_PROPERTY(QList<QString> valeur READ read_damier NOTIFY gameChanged)
    Q_PROPERTY(QList<bool> est_visible READ read_visibilite NOTIFY gameChanged)
    Q_PROPERTY(QString score READ calcul_score NOTIFY gameChanged)
    bool test_win();
    void test_lose();
    QString calcul_score();
signals:
    void gameChanged();
private slots:

private:
    bool jeuOn;
    damier partie;
    int Taille;
};

#endif // JEU_H
