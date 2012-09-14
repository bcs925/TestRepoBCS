#include "app.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;

App::App()
{
    QmlDocument *qml = QmlDocument::create("main.qml");
    qml->setContextProperty("app", this);
    
    AbstractPane *root = qml->createRootNode<AbstractPane>();
    Application::setScene(root);
}

int App::clickedRock(int user1, int user2)
{
	int winner;

    if((user1 == 1) && (user2 == 2))
    winner=2;
    else if ((user1 == 1) && (user2 == 3))
    winner=1;
    else if ((user1 == 1) && (user2 == 1))
    winner=0;

	return (winner);

}

int App::clickedPaper(int user1, int user2)
{
	int winner;

    if((user1 == 2) && (user2 == 2))
    winner=0;
    else if ((user1 == 2) && (user2 == 3))
    winner=2;
    else if ((user1 == 2) && (user2 == 1))
    winner=1;

	return (winner);

}

int App::clickedScissors(int user1, int user2)
{
	int winner;

    if((user1 == 3) && (user2 == 2))
    winner=1;
    else if ((user1 == 3) && (user2 == 3))
    winner=0;
    else if ((user1 == 3) && (user2 == 1))
    winner=2;

	return (winner);

}

int App::codeWinning(int record)
{
	int add1;
	add1 = record+1;
	return add1;
}


