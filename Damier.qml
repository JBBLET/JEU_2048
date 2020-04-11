import QtQuick 2.0

Item {
    id: element
    property alias gridColumns: damier.columns
    property alias gridRows: damier.rows

    Rectangle {
        id: panneau_jeu
        color: "#ffffff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 200

        Grid {
            id: damier
            anchors.fill: parent
            opacity: 1
            clip: false
            visible: true
            rows: 4
            columns: 4
            Repeater {
                model: grid.columns * grid.rows;

                Case {
                    id: element1
                    visible: false
                    width: grid.width / grid.columns;
                    height: grid.height / grid.rows;
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_height:400;anchors_width:400;anchors_x:-84;anchors_y:-88}
D{i:1;anchors_height:200;anchors_width:200;anchors_x:204;anchors_y:120}
}
##^##*/
