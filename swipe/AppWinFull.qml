import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt.labs.platform 1.1
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import "common"


ApplicationWindow {
    id: fullappwin
    visible: true
    width: Math.max(360,Screen.width/6)
    height: 320

    //height: Screen.desktopAvailableHeight - tabfBar.height * 2
    //If you want to position a Window at the right of the desktop, you can bind to it like this:
    x: Screen.width - width - 32
    y:  10

    // 根据个人操作实时提示业务知识
    title: qsTr("全面屏朵拉助理")

}
