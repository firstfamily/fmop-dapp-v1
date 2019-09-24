import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls 1.4

import foo 1.0

Item {
    width: 300
    height: 480

    TreeModel {
        id: treemodel
        roles: ["phrase","year"]
        TreeElement{
            property string phrase: "Hey"
            property string year: "2017"
            TreeElement{
                property string phrase: "What's"
                property string year: "2018"
                TreeElement{
                    property string phrase: "Up?"
                    property string year: "2019"
                }
            }
        }
        TreeElement{
            property string phrase: "Hey"
            property string year: "2018"
        }
        TreeElement{
            property string phrase: "Hey"
            property string year: "2019"
        }
        TreeElement{
            property string phrase: "Hey"
            property string year: "2020"
        }
    }
    TreeView {
        anchors.fill: parent
        anchors.bottomMargin: 75
        model: treemodel
        TableViewColumn {
            title: "Name"
            role: "phrase"
            width: 200
        }
        TableViewColumn {
            title: "Year"
            role: "year"
            width: 200
        }
    }
}
