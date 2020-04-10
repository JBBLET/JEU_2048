import QtQuick 2.12
import QtQuick.Window 2.12


Window {
    visible: true
    width: 400
    height: 470
    title: qsTr("Jeu 2048")
    Keys.onPressed:{
        switch(event.key){
            case Qt.Key_Up:
                vueObjetCpt.random();
            break;
        }
    }

    Rectangle {
        id: rectangle
        color: "#ebb3a9"
        anchors.fill: parent


    }


        Text {
            id: element
            x: 50
            width: 300
            height: 64
            color: "#2a211e"
            text: qsTr("2048")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.top: parent.top
            anchors.topMargin: 0
            font.pixelSize: 43
        }

        Grid {
            id: grid
            x: 50
            y: 91
            width: 300
            height: 303
            columns : 3

            MaCase {
                id: maCase1
                elementText: vueObjetCpt.case1QML ;
            }

            MaCase {
                id: maCase2
                elementText: "n2"
            }






            MaCase {
                id: maCase3
                elementText: qsTr("n3")
            }

            MaCase {
                id: maCase4
                elementText: qsTr("n4")
            }
            MaCase {
                id: maCase5
                elementText: qsTr("n5")
            }
            MaCase {
                id: maCase6
                elementText: qsTr("n6")
            }
            MaCase {
                id: maCase9
                elementText: "n9"
            }
            MaCase {
                id: maCase8
                elementText: qsTr("n8")
            }

            MaCase {
                id: maCase7
                elementText: qsTr("n7")
            }
        }


    }

