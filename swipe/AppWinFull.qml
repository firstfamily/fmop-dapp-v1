import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.12
import Qt.labs.platform 1.1
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import "common"


ApplicationWindow {
    id: fullappwin
    visible: true
    width: Math.max(640,Screen.width/6)
    height: 480

    Component.onCompleted: {
        //height: Screen.desktopAvailableHeight - tabfBar.height * 2
        //If you want to position a Window at the right of the desktop, you can bind to it like this:
        x = Screen.width / 2 - width / 2
        y = Screen.height / 2 - height / 2

        splitView.restoreState(settings.splitView)

    }

    // 根据个人操作实时提示业务知识
    title: qsTr("全面屏朵拉助理")

    Settings {
            id: settings
            property var splitView
        }


    MenuBar {
        Menu {
            title: qsTr("&File")

            MenuItem {
                text: qsTr("&Open")
//                onTriggered: openDialog.open()
            }
            MenuItem {
                text: qsTr("&Save As...")
//                onTriggered: saveDialog.open()
            }
            MenuItem {
                text: qsTr("&Quit")
//                onTriggered: Qt.quit()
            }
        }

        Menu {
            title: qsTr("&Edit")

            MenuItem {
                text: qsTr("&Copy")
//                enabled: textArea.selectedText
//                onTriggered: textArea.copy()
            }
            MenuItem {
                text: qsTr("Cu&t")
//                enabled: textArea.selectedText
//                onTriggered: textArea.cut()
            }
            MenuItem {
                text: qsTr("&Paste")
//                enabled: textArea.canPaste
//                onTriggered: textArea.paste()
            }
        }

        Menu {
            title: qsTr("F&ormat")

            MenuItem {
                text: qsTr("&Bold")
                checkable: true
//                checked: document.bold
//                onTriggered: document.bold = !document.bold
            }
            MenuItem {
                text: qsTr("&Italic")
                checkable: true
//                checked: document.italic
//                onTriggered: document.italic = !document.italic
            }
            MenuItem {
                text: qsTr("&Underline")
                checkable: true
//                checked: document.underline
//                onTriggered: document.underline = !document.underline
            }
        }
    }

    header: ToolBar {
        leftPadding: 8

        Flow {
            id: flow
            width: parent.width

            Row {
                id: fileRow
                ToolButton {
                    id: openButton
                    text: "\uF115" // icon-folder-open-empty
                    font.family: "fontello"
                    onClicked: openDialog.open()
                }
                ToolSeparator {
                    contentItem.visible: fileRow.y === editRow.y
                }
            }

            Row {
                id: editRow
                ToolButton {
                    id: copyButton
                    text: "\uF0C5" // icon-docs
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
//                    enabled: textArea.selectedText
//                    onClicked: textArea.copy()
                }
                ToolButton {
                    id: cutButton
                    text: "\uE802" // icon-scissors
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
//                    enabled: textArea.selectedText
//                    onClicked: textArea.cut()
                }
                ToolButton {
                    id: pasteButton
                    text: "\uF0EA" // icon-paste
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
//                    enabled: textArea.canPaste
//                    onClicked: textArea.paste()
                }
                ToolSeparator {
                    contentItem.visible: editRow.y === formatRow.y
                }
            }

            Row {
                id: formatRow
                ToolButton {
                    id: boldButton
                    text: "\uE800" // icon-bold
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
                    checkable: true
//                    checked: document.bold
//                    onClicked: document.bold = !document.bold
                }
                ToolButton {
                    id: italicButton
                    text: "\uE801" // icon-italic
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
                    checkable: true
//                    checked: document.italic
//                    onClicked: document.italic = !document.italic
                }
                ToolButton {
                    id: underlineButton
                    text: "\uF0CD" // icon-underline
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
                    checkable: true
//                    checked: document.underline
//                    onClicked: document.underline = !document.underline
                }
                ToolButton {
                    id: fontFamilyToolButton
                    text: qsTr("\uE808") // icon-font
                    font.family: "fontello"
//                    font.bold: document.bold
//                    font.italic: document.italic
//                    font.underline: document.underline
//                    onClicked: {
//                        fontDialog.currentFont.family = document.fontFamily;
//                        fontDialog.currentFont.pointSize = document.fontSize;
//                        fontDialog.open();
//                    }
                }
                ToolButton {
                    id: textColorButton
                    text: "\uF1FC" // icon-brush
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
                    onClicked: colorDialog.open()

                    Rectangle {
                        width: aFontMetrics.width + 3
                        height: 2
                        color: document.textColor
                        parent: textColorButton.contentItem
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.baseline: parent.baseline
                        anchors.baselineOffset: 6

                        TextMetrics {
                            id: aFontMetrics
                            font: textColorButton.font
                            text: textColorButton.text
                        }
                    }
                }
                ToolSeparator {
                    contentItem.visible: formatRow.y === alignRow.y
                }
            }

            Row {
                id: alignRow
                ToolButton {
                    id: alignLeftButton
                    text: "\uE803" // icon-align-left
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
                    checkable: true
//                    checked: document.alignment == Qt.AlignLeft
//                    onClicked: document.alignment = Qt.AlignLeft
                }
                ToolButton {
                    id: alignCenterButton
                    text: "\uE804" // icon-align-center
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
                    checkable: true
//                    checked: document.alignment == Qt.AlignHCenter
//                    onClicked: document.alignment = Qt.AlignHCenter
                }
                ToolButton {
                    id: alignRightButton
                    text: "\uE805" // icon-align-right
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
                    checkable: true
//                    checked: document.alignment == Qt.AlignRight
//                    onClicked: document.alignment = Qt.AlignRight
                }
                ToolButton {
                    id: alignJustifyButton
                    text: "\uE806" // icon-align-justify
                    font.family: "fontello"
                    focusPolicy: Qt.TabFocus
                    checkable: true
//                    checked: document.alignment == Qt.AlignJustify
//                    onClicked: document.alignment = Qt.AlignJustify
                }
            }
        }
    }

    SplitView {
        id: splitView

        anchors.fill: parent
            orientation: Qt.Horizontal

            Rectangle {
                implicitWidth: 200
                SplitView.maximumWidth: 400
                color: "lightblue"
                Label {
                    text: "NavTreeView 1"
                    anchors.centerIn: parent
                }
            }
            SplitView{
                id: centerItem
                SplitView.minimumWidth: 50
                SplitView.fillWidth: true

                orientation: Qt.Vertical
                Rectangle {
                    SplitView.fillWidth: true
                    SplitView.fillHeight: true
                    color: "lightgray"
                    Label {
                        text: "View 2.1"
                        anchors.centerIn: parent
                    }
                }
                Rectangle {
                    SplitView.minimumHeight:  200
                    SplitView.fillWidth: true
                    color: "lightgray"
                    Label {
                        text: "View 2.2"
                        anchors.centerIn: parent
                    }
                }
            }
            Column {
                SplitView.minimumWidth: 300
                SplitView.maximumWidth: 800
                Label {
                    text: "View 3"
                }
                RadioButton { text: qsTr("Small") }
                RadioButton { text: qsTr("Medium");  checked: true }
                RadioButton { text: qsTr("Large") }
            }

    }


}
