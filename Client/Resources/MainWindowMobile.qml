import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12
import cppnamespace 1.0

ApplicationWindow
{
    id: applicationWindow
    objectName: "applicationWindow"
    visible: true
    width: 640
    height: 480
    title: qsTr("SunChat")

    enum WidgetNum {
        Authorization = 1,
        Registration,
        LastMessagesListView,
        Messages
    }

    StackLayout
    {
        id: mainWindowLayout1

        anchors.fill: parent
        currentIndex: 0

        Authorization
        {
            id: authorization
            objectName: "authorization"
        }

        Registration
        {
            id: registration
            objectName: "registration"
        }

        ContentMobile
        {
            id: content
            objectName: "content"
        }
    }

    Connections
    {
        target: CppParent
        onSwitchToContent:
        {
            mainWindowLayout1.currentIndex = Widgets.Content
        }
    }
}
