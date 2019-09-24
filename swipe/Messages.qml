import QtQuick 2.13
import QtQuick.Controls 2.13

Rectangle {
    id: root

    width: swipeView.width; height: 400

    focus:true

//    keys.forwardTo:[view]

    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4a4a4a" }
            GradientStop { position: 1.0; color: "#2b2b2b" }
        }
    }


    ListView {
        id: messageListView

        anchors { fill: parent; margins: 2 }

        model: PetsModel {}
        delegate: dragDelegate

        spacing: 4
        cacheBuffer: 50

        focus: true
        clip: true

        // Set the highlight delegate. Note we must also set highlightFollowsCurrentItem
        // to false so the highlight delegate can control how the highlight is moved.
        highlight: highlightBar
        highlightFollowsCurrentItem: false


        Keys.onPressed: {
            console.log(messageListView.currentIndex);
            //...
        }

    }


    Component {

        id: dragDelegate

        Item {
            id: content
            width: swipeView.width;height: 55

            anchors { left: parent.left; right: parent.right }

            Column {
                id: column
                anchors { fill: parent; margins: 2 }

                Text { text: 'Name: ' + name }
                Text { text: 'Type: ' + type }
                Text { text: 'Age: ' + age }
                Text { text: 'Size: ' + size }
            }
            // indent the item if it is the current item
           states: State {
               name: "Current"
               when: messageListView.isCurrentItem
               PropertyChanges { target: content; x: 20 }
           }
           transitions: Transition {
               NumberAnimation { properties: "x"; duration: 200 }
           }
           MouseArea {
               anchors.fill: parent
               onClicked: {
                   messageListView.currentIndex = index;
                   if(!messageListView.activeFocus){
                        messageListView.forceActiveFocus();
                   }
               }

           }

           onFocusChanged: {
                console.log("onFocusChanged:"+messageListView.currentIndex + " listView.activeFocus="+messageListView.activeFocus);
           }

        }
    }

    // Define a highlight with customized movement between items.
    Component {
        id: highlightBar
        Rectangle {
            width: swipeView.width; height: 50
            color: "#FFFF88"
            y: messageListView.currentItem.y;
            Behavior on y { SpringAnimation { spring: 2; damping: 0.1 } }
        }
    }


}
