import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt.labs.platform 1.1

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }




    MessageDialog {
        id: messageDialog
        text: "The document has been modified."
           informativeText: "Do you want to save your changes?"
           buttons: MessageDialog.Ok | MessageDialog.Cancel
        onAccepted: {
            console.log("And of course you could only agree.")
        }

        Component.onCompleted: visible = false
    }

    SystemTrayIcon {
        visible: true
        icon.source: "qrc:/images/house.png"

        tooltip: "tooltip"

        menu: Menu {

            MenuItem {
                text: qsTr("我在线上")
                onTriggered: {
                        window.show()
                        window.raise()
                        window.requestActivate()
                }
            }
            MenuItem {
                iconSource: "qrc:/images/house.png"
                text: qsTr("忙碌")
                onTriggered: messageDialog.open()
            }
            MenuItem {

                iconSource: "qrc:/images/car.png"
                text: qsTr("隐身")
            }
            MenuItem {
                iconSource: "qrc:/images/boat.png"
                text: qsTr("离线")
            }
            MenuSeparator{
            }
            MenuItem {
                text: qsTr("退出")
                onTriggered: Qt.quit()
            }
        }

        onActivated: {
            window.show()
            window.raise()
            window.requestActivate()
        }

        Component.onCompleted: {
           showMessage("FMOP SWIPE", "Something important came up. Click this to know more.")
        }
    }

}
