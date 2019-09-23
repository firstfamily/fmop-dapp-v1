import QtQuick 2.5
import QtQuick.Controls 2.5
Rectangle {
    id: root

    width: 300; height: 400

    Component {
        id: dragDelegate

        Rectangle {
            id: content

            anchors { left: parent.left; right: parent.right }
            height: column.implicitHeight + 4

            border.width: 1
            border.color: "lightsteelblue"

            radius: 2

            Column {
                id: column
                anchors { fill: parent; margins: 2 }

                Text { text: 'Name: ' + name }
                Text { text: 'Type: ' + type }
                Text { text: 'Age: ' + age }
                Text { text: 'Size: ' + size }
            }
        }
    }
    ListView {
        id: view

        anchors { fill: parent; margins: 2 }

        model: PetsModel {}
        delegate: dragDelegate

        spacing: 4
        cacheBuffer: 50
    }
}
