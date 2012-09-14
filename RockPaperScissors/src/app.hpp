#ifndef APP_H
#define APP_H

#include <QObject>


class App : public QObject
{
    Q_OBJECT

public:
    App();

Q_INVOKABLE int clickedRock(int user1, int user2);
Q_INVOKABLE int clickedPaper(int user1, int user2);
Q_INVOKABLE int clickedScissors(int user1, int user2);
Q_INVOKABLE int codeWinning(int record);


};

#endif // ifndef APP_H
