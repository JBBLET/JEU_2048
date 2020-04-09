import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Jeu 2048")

    Rectangle {
        id: rectangle
        color: "#ebb3a9"
        anchors.fill: parent

        Text {
            id: element
            x: 265
            width: 110
            height: 26
            color: "#2a211e"
            text: qsTr("2048")
            horizontalAlignment: Text.AlignHCenter
            anchors.top: parent.top
            anchors.topMargin: 0
            font.pixelSize: 25
        }

        Grid {
            id: grid
            x: 129
            y: 51
            width: 336
            height: 351
            columns : 3


            Rectangle {
                id: rectangle2
                width: 112
                height: 117
                color: "#ffffff"

                Text {
                    id: element2
                    text: qsTr("Text")
                    anchors.fill: parent
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: rectangle3
                width: 112
                height: 117
                color: "#ffffff"

                Text {
                    id: element3
                    x: -112
                    y: 0
                    text: qsTr("Text")
                    font.pixelSize: 12
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: rectangle9
                width: 112
                height: 117
                color: "#ffffff"

                Text {
                    id: element6
                    x: 336
                    y: -117

                    font.pixelSize: 12
                    anchors.fill: parent
                    text : vueObjetCpt.cptQML
                    Keys.onPressed:{
                        switch(event.key){
                        case Qt.Key_Up: vueObjetCpt.mouvement_haut();
                            break;
                        case Qt.Key_Down: vueObjetCpt.mouvement_bas();
                            break;
                        }
                    }
                }

            }

            Rectangle {
                id: rectangle10
                width: 112
                height: 117
                color: "#ffffff"
                Text {
                    id: element7
                    x: 336
                    y: -117
                    text: vueObjetCpt.cptQML
                    font.pixelSize: 12
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: rectangle11
                width: 112
                height: 117
                color: "#ffffff"
                Text {
                    id: element8
                    x: 336
                    y: -117
                    text: vueObjetCpt.cptQML
                    font.pixelSize: 12
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: rectangle12
                width: 112
                height: 117
                color: "#ffffff"
                Text {
                    id: element9
                    x: 336
                    y: -117
                    text: vueObjetCpt.cptQML
                    font.pixelSize: 12
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: rectangle13
                width: 112
                height: 117
                color: "#ffffff"
                Text {
                    id: element10
                    x: 336
                    y: -117
                    text: vueObjetCpt.cptQML
                    font.pixelSize: 12
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: rectangle14
                width: 112
                height: 117
                color: "#ffffff"
                Text {
                    id: element11
                    x: 336
                    y: -117
                    text: vueObjetCpt.cptQML
                    font.pixelSize: 12
                    anchors.fill: parent
                }
            }

        Rectangle {
            id: rectangle15
            width: 112
            height: 117
            color: "#ffffff"
            Text {
                id: element12
                x: 336
                y: -117
                text: vueObjetCpt.cptQML
                font.pixelSize: 12
                anchors.fill: parent
            }
        }
    }
}
}
