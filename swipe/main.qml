import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt.labs.platform 1.1
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import "common"


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



    header: ToolBar{

        property bool backToolButtonVisible: false
        property alias currentIndex: tabhBar.currentIndex
        // explains how to calculate the height:
        property int defaultToolBar: 48
        property int defaultTabBar: 48
        // without this selected tab not marked
        property int landscapeExtra: isLandscape? 1 : 0
        height: defaultToolBar + defaultTabBar + landscapeExtra
        RowLayout {
            id: topRow

            focus: false
            spacing: 6
            anchors.left: parent.left
            anchors.right: parent.right
            ToolButton {
                enabled: backToolButtonVisible
                focusPolicy: Qt.NoFocus
                Image {
                    id: backImageImage
                    visible: backToolButtonVisible
                    anchors.centerIn: parent
                    source: "qrc:/images/"+iconOnPrimaryFolder+"/arrow_back.png"
                }
                onClicked: {
                    navPane.onePageBack()
                }
            }

            Rectangle {
                id: searchBar

                width:  320
                height: 23
                color: creatorTheme.Welcome_BackgroundColorNormal
                radius: 6
                border.color: "#cccccc" // FIXME: make themable

                property alias placeholderText: lineEdit.placeholderText
                property alias text: lineEdit.text

                TextField {
                    id: lineEdit
                    anchors.topMargin: 1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 12
                    anchors.leftMargin: 12
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 14
                    placeholderText:  qsTr("Search...")
                }
                Accessible.name: text
                Accessible.description: placeholderText
                Accessible.role: Accessible.EditableText
            }

            ToolButton {
                focusPolicy: Qt.NoFocus
                Image {
                    id: buttonImage
                    anchors.centerIn: parent
                    source: "qrc:/images/"+iconOnPrimaryFolder+"/more_vert.png"
                }
                onClicked: {
                    optionsMenu.open()
                }
                Menu {
                    id: optionsMenu
                    MenuItem {
                        text: isDarkTheme? qsTr("Light Theme") : qsTr("Dark Theme")
                        onTriggered: {
                            themePalette = myApp.swapThemePalette()
                        }
                    }
                    MenuItem {
                        text: qsTr("Select Primary Color")
                        onTriggered: {
                            popup.selectAccentColor = false
                            popup.open()
                        }
                    }
                    MenuItem {
                        text: qsTr("Select Accent Color")
                        onTriggered: {
                            popup.selectAccentColor = true
                            popup.open()
                        }
                    }
                    onAboutToHide: {
                        appWindow.resetFocus()
                    }
                } // end optionsMenu

            } // end ToolButton
        } // end RowLayout

        TabBar {
            id: tabhBar
            width: parent.width
            anchors.bottomMargin:  0
            anchors.bottom: parent.bottom
            currentIndex: swipeView.currentIndex

            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("消息0")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("任务1")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("组织2")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("制度3")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("部门知识4")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("公司知识5")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("个人资料6")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("通讯录7")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("茶饮8")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("咖啡9")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("酒吧10")
            }
            TabButton {
                width: Math.max(100, tabhBar.width / 6)
                text: qsTr("店铺10")
            }
        }

    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabhBar.currentIndex

        onCurrentIndexChanged: {
            switch(currentIndex){
            case 0:
            case 1:
                tabfBar.setCurrentIndex(0)
                break;
            case 2:
            case 3:
                tabfBar.setCurrentIndex(1)
                break;
            case 4:
            case 5:
                tabfBar.setCurrentIndex(2)
                break;
            case 6:
            case 7:
                tabfBar.setCurrentIndex(3)
                break;
            case 8:
            case 9:
            case 10:
            case 11:
                tabfBar.setCurrentIndex(4)
                break;
            }
            console.log("SwipeView.currentIndex="+currentIndex)
        }

        Messages {
        }

        ShapeShifting {
        }

        FolderTreeView {
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
        PageB{}
    }


    footer: TabBar {
        id: tabfBar
        //currentIndex: swipeView.currentIndex
        anchors.margins: 0

        TabButton {
            text: qsTr("消息任务")
            onClicked: {
                swipeView.setCurrentIndex(0)
            }
        }
        TabButton {
            text: qsTr("组织制度")
            onClicked: {
                swipeView.setCurrentIndex(2)
            }
        }
        TabButton {
            text: qsTr("知识业务")
            onClicked: {
                swipeView.setCurrentIndex(4)
            }
        }
        TabButton {
            text: qsTr("我的资料")
            onClicked: {
                swipeView.setCurrentIndex(6)
            }
        }
        TabButton {
            text: qsTr("附近发现")
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
