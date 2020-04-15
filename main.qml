import QtQuick 2.12
import QtQuick.Window 2.12


Window {
    visible: true
    width: 600
    height: 470
    property alias taillechoisieText: taillechoisie.text
    property alias scoreText: score.text
    title: qsTr("Jeu 2048")


    Rectangle {
        id: rectangle
        color: "#ebb3a9"
        anchors.fill: parent


        Text {
            id: element
            x: 271
            y: 8
            color: "#ff8c11"
            text: qsTr("2048")
            anchors.horizontalCenter: parent.horizontalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 24
        }

        Rectangle {
            id: zonejeu
            color: "#e3a118"
            anchors.right: parent.right
            anchors.rightMargin: 160
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 50

            Grid {
                id: grid
                anchors.fill: parent
                rows: taillechoisieText*1
                columns: taillechoisieText*1


                Repeater {
                    width: parent.width
                    height : parent.height
                    model: grid.columns*grid.rows;

                    Rectangle {
                        id: rectanglecase
                        width: grid.width/grid.columns
                        height: grid.height/grid.rows
                        color: "#00000000"
                        border.width: 43
                        border.color: "#000000"

                        Rectangle {
                            id: rectangle1
                            color: "#ead4b7"
                            radius: 12
                            border.width: 3
                            anchors.fill: parent
                            visible: true

                            Text {
                                id: value
                                text: vueObjetGame.valeur[index]
                                verticalAlignment: Text.AlignVCenter
                                horizontalAlignment: Text.AlignHCenter
                                visible: vueObjetGame.est_visible[index]
                                anchors.fill: parent
                                font.pixelSize: 17
                            }
                        }
                    }
                }


            }
        }

        Rectangle {
            id: rectanglescore
            x: 465
            y: 61
            width: 120
            height: 60
            color: "#ffffff"
            anchors.right: parent.right
            anchors.rightMargin: 20

            Text {
                id: element1
                text: qsTr("Score:")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.right: parent.right
                anchors.rightMargin: 2
                anchors.left: parent.left
                anchors.leftMargin: 2
                anchors.top: parent.top
                anchors.topMargin: 5
                font.pixelSize: 24
            }

            Text {
                id: score
                y: 37
                text: vueObjetGame.score
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.right: parent.right
                anchors.rightMargin: 2
                anchors.left: parent.left
                anchors.leftMargin: 2
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                font.pixelSize: 18
            }
        }

        Rectangle {
            id: rectangletaille
            x: 460
            y: 164
            width: 120
            height: 60
            color: "#ffffff"
            anchors.right: parent.right
            anchors.rightMargin: 20

            Text {
                id: element2
                text: qsTr("Choix Taille:")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.left: parent.left
                anchors.leftMargin: 2
                anchors.right: parent.right
                anchors.rightMargin: 2
                anchors.top: parent.top
                anchors.topMargin: 5
                font.pixelSize: 16
            }

            TextInput {
                id: taillechoisie
                y: 32
                height: 20
                text: qsTr("4")
                mouseSelectionMode: TextInput.SelectWords
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.right: parent.right
                anchors.rightMargin: 2
                anchors.left: parent.left
                anchors.leftMargin: 2
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                font.pixelSize: 12
                validator: IntValidator{bottom: 3; top: 15;}
            }
        }

        Rectangle {
            id: rectanglestart
            x: 460
            y: 400
            width: 120
            height: 60
            color: "#ffffff"
            anchors.right: parent.right
            anchors.rightMargin: 20
            focus: true
            Keys.onPressed: {
                //switch (event.key) {
                //case Qt.Key_Up:
                //    vueObjetGame.mouvement_haut();
                //    break;
                //case Qt.Key_Down:
                //    vueObjetGame.mouvement_bas();
                //    break;
                //case Qt.Key_Right:
                //    vueObjetGame.mouvement_droit();
                //    break;
                //case Qt.Key_Left:
                //    vueObjetGame.mouvement_gauche();
                //    break;
                //}
                if (event.key===Qt.Key_Up){console.log('Key up was pressed');
                    vueObjetGame.mouvement_haut();
                event.accepted = true;}
                if (event.key===Qt.Key_Down){vueObjetGame.mouvement_bas();
                console.log('Key down was pressed');
                event.accepted = true;}
                if (event.key===Qt.Key_Right){vueObjetGame.mouvement_droit();
                console.log('Key right was pressed');
                event.accepted = true;}
                if (event.key===Qt.Key_Left){vueObjetGame.mouvement_gauche();
                console.log('Key left was pressed');
                event.accepted = true;}


            }

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                acceptedButtons:Qt.LeftButton|Qt.RightButton
                onClicked:{vueObjetGame.start_jeu(taillechoisieText);}

                Text {
                    id: element3
                    text: qsTr("Start Game")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 12
                }
            }
        }

    }



}


/*##^##
Designer {
    D{i:4;anchors_height:400;anchors_width:400;anchors_x:0;anchors_y:0}D{i:3;anchors_height:410;anchors_width:410;anchors_x:384;anchors_y:260}
D{i:8;anchors_x:48;anchors_y:23}D{i:9;anchors_x:48;anchors_y:23}D{i:11;anchors_x:48;anchors_y:9}
D{i:13;anchors_width:80;anchors_x:20}D{i:12;anchors_width:80;anchors_x:20;anchors_y:9}
D{i:10;anchors_x:48}D{i:15;anchors_height:100;anchors_width:100;anchors_x:41;anchors_y:30}
D{i:14;anchors_height:100;anchors_width:100;anchors_x:12;anchors_y:8}
}
##^##*/
