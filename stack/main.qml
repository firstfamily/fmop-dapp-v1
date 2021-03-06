import QtQuick 2.12
import QtQuick.Controls 2.5
import Qt.labs.platform 1.1

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }



    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Page 1")
                width: parent.width
                onClicked: {
                    stackView.push("Page1Form.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Page 2")
                width: parent.width
                onClicked: {
                    stackView.push("Page2Form.ui.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "HomeForm.ui.qml"
        anchors.fill: parent
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
        icon.source: "qrc:/images/car.png"

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
                text: qsTr("忙碌")
                onTriggered: messageDialog.open()
            }
            MenuItem {
                text: qsTr("隐身")
            }
            MenuItem {
                text: qsTr("离线")
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
           showMessage("FMOP STACK", "Something important came up. Click this to know more.")
        }
    }

}
