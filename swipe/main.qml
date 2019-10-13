import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import Qt.labs.platform 1.1
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import "common"


Item {


    AppWinFull{
        id: fullappwin
    }

    AppWinIdx{
        id: idxappwin
    }

    AppWinChats{
        id: chatsappwin
    }

    SystemTrayIcon {
        visible: true
        icon.source: "qrc:/images/house.png"

        tooltip: "tooltip"

        menu: Menu {

            MenuItem {
                text: qsTr("索引屏面板")
                onTriggered: {
                        idxappwin.show()
                        idxappwin.raise()
                        idxappwin.requestActivate()
                }
            }
            MenuItem {
                text: qsTr("全面屏面板")
                onTriggered: {
                        fullappwin.show()
                        fullappwin.raise()
                        fullappwin.requestActivate()
                }
            }
            MenuItem {
                text: qsTr("多屏聊面板")
                onTriggered: {
                        chatsappwin.show()
                        chatsappwin.raise()
                        chatsappwin.requestActivate()
                }
            }
            MenuSeparator{
            }
            MenuItem {
                iconSource: "qrc:/images/house.png"
                text: qsTr("我在线上")
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
            idxappwin.show()
            idxappwin.raise()
            idxappwin.requestActivate()
        }

//        Component.onCompleted: {
//           showMessage("FMOP SWIPE", "Something important came up. Click this to know more.")
//        }
    }

}
