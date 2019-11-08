import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("MVVM QML Example")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    // 从代码可以看出：QML中控件的值和ViewModel中的属性主要通过这两句实现双向绑定的：
    // text: mainViewModel.name      onTextChanged: mainViewModel.name = text

    Column {
            anchors.top: header.bottom
            anchors.centerIn: parent
            spacing: 5
            TextArea {
                id: nameTextArea
                anchors.horizontalCenter: parent.horizontalCenter
                placeholderText: qsTr("username")
                text: mainViewModel.name
                onTextChanged: mainViewModel.name = text
            }
            TextArea {
                id: passwordTextArea
                anchors.horizontalCenter: parent.horizontalCenter
                placeholderText: qsTr("password")
                text: mainViewModel.password
                onTextChanged: mainViewModel.password = text
            }
            Button {
                text: "Login"
                anchors.right: parent.right
                anchors.rightMargin: 5
                onClicked: mainViewModel.loginButtonClicked()
            }
            Text {
                id:stateText
                anchors.horizontalCenter: parent.horizontalCenter
                text: mainViewModel.state
            }
        }
}
