#pragma once

#include <QWidget>
#include <QtQuick/QQuickView>
#include "common/person.h"

namespace Ui 
{ 
	class Messages; 
};

namespace Models
{
	class MessagesModel;
}

namespace Widgets
{

class Messages : public QWidget
{
	Q_OBJECT

public:
	Messages(Models::MessagesModel* messagesModel, QWidget *parent = nullptr);
	~Messages();

signals:
	void sendMessage(const Common::Person& other, const QString& message);

private slots:
	void onButtonSendClicked();

private:
	Ui::Messages* m_ui;
	QQuickView* m_messagesView;

	Common::Person m_otherPerson;
};

}