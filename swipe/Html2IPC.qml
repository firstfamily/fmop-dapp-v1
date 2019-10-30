import QtQuick 2.12
import QtQuick.Controls 2.5
import QtWebChannel 1.0
import QtWebEngine 1.1

import WisdomClub 1.0


Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("WebChannel IPC QML Example")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("Demonstrates how to integrate a web engine in a hybrid desktop application.")
        anchors.top: header.bottom
    }


    Sage {
        id: oldBeardedMan
        WebChannel.id: "wiseMan"
    }

    WebEngineView {
        id: webview
        anchors.fill: parent
        url: "qrc:/Html2IPC.html"
        webChannel: channel
    }

    WebChannel {
        id: channel
        registeredObjects: [oldBeardedMan]
    }

    Button {
        text: "Enlighten"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 30

        // 参考解释：https://www.pressc.cn/1085.html
        // 调用方法
        onClicked: oldBeardedMan.changeAnswerToLife()
    }
}
