import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt.labs.platform 1.1
import QtQuick.Window 2.12

ApplicationWindow {
    id: window
    visible: true
    width: Screen.width/6
    height: Screen.height - tabfBar.height * 4

    //height: Screen.desktopAvailableHeight - tabfBar.height * 2
    //If you want to position a Window at the right of the desktop, you can bind to it like this:
    x: Screen.width - width - 32
    y:  tabfBar.height

    // 根据个人操作实时提示业务知识
    title: qsTr("朵拉助理")


    header: TabBar {
        id: tabhBar
        width: parent.width
        anchors.bottomMargin:  0
        currentIndex: swipeView.currentIndex

        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page 1")
            onClicked: {
                tabfBar.setCurrentIndex(0)
            }
        }
        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page 2")
            onClicked: {
                tabfBar.setCurrentIndex(0)
            }
        }
        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page 3")
            onClicked: {
                tabfBar.setCurrentIndex(1)
            }
        }
        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page 4")
            onClicked: {
                tabfBar.setCurrentIndex(1)
            }
        }
        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page 5")
            onClicked: {
                tabfBar.setCurrentIndex(2)
            }
        }
        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page 6")
            onClicked: {
                tabfBar.setCurrentIndex(2)
            }
        }
        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page 7")
            onClicked: {
                tabfBar.setCurrentIndex(3)
            }
        }
        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page 8")
            onClicked: {
                tabfBar.setCurrentIndex(3)
            }
        }
        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page 9")
            onClicked: {
                tabfBar.setCurrentIndex(4)
            }
        }
        TabButton {
            width: Math.max(100, tabhBar.width / 5)
            text: qsTr("Page A")
            onClicked: {
                tabfBar.setCurrentIndex(4)
            }
        }
    }



    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabhBar.currentIndex

        Page1Form {
        }
        Page2Form {
        }
        Page3Form {
        }
        Page4Form {
        }
        Page5Form {
        }
        Page6Form {
        }
        Page7Form {
        }
        Page8Form {
        }
        Page9Form {
        }
        PageAForm {
        }
    }


    footer: TabBar {
        id: tabfBar
        //currentIndex: swipeView.currentIndex
        anchors.margins: 0

        TabButton {
            text: qsTr("BMenu 1")
            onClicked: {
                swipeView.setCurrentIndex(0)
            }
        }
        TabButton {
            text: qsTr("BMenu 2")
            onClicked: {
                swipeView.setCurrentIndex(2)
            }
        }
        TabButton {
            text: qsTr("BMenu 3")
            onClicked: {
                swipeView.setCurrentIndex(4)
            }
        }
        TabButton {
            text: qsTr("BMenu 4")
            onClicked: {
                swipeView.setCurrentIndex(6)
            }
        }
        TabButton {
            text: qsTr("BMenu 5")
            onClicked: {
                swipeView.setCurrentIndex(8)
            }
        }
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

//        Component.onCompleted: {
//           showMessage("FMOP SWIPE", "Something important came up. Click this to know more.")
//        }
    }

}
