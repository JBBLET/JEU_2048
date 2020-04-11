#ifndef JEU_H
#define JEU_H
#include <QObject>
#include <damier.h>
using namespace std;

class Jeu : public QObject
{
    Q_OBJECT
public:
    explicit Jeu(QObject *parent);
    Q_INVOKABLE void start_jeu(int L); //debut du jeu dans L on met la taille du damier selectionne par l utilisateurcette fonction est active par un bouton
    Q_INVOKABLE void mouvement();
    Q_INVOKABLE int read_damier(int index); //renvoie la valeur de la case reperee par l index
    Q_INVOKABLE bool read_visibilite(int index);// renvoie la valeur selon si on a besion d afficher la case
    Q_PROPERTY(int valeur READ read_damier NOTIFY gameChanged)
    Q_PROPERTY(bool est_visible READ read_visibilite NOTIFY gameChanged)
    Q_INVOKABLE void restart(int L);
    void test_win(damier &D);
    void test_lose(damier &D);
signals:
    void gamechanged();
private slots:

private:
    bool jeuOn;
    damier partie;
    int Taille;
    int score;
};

#endif // JEU_H
