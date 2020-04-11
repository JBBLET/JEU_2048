import QtQuick 2.12
import QtQuick.Window 2.12


Window {
    visible: true
    width: 400
    height: 470
    property alias damierGridColumns: damier.gridColumns
    property alias damierGridRows: damier.gridRows
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


        Text {
            id: element
            x: 171
            y: 8
            color: "#ff8c11"
            text: qsTr("2048")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 24
        }


        Damier {
            id: damier
            x: 50
            y: 85
            width: 300
            height: 300
            gridColumns: 4
            gridRows: 4
        }
    }



}

