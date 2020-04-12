import QtQuick 2.0

Item {
    property alias valueVisible: value.visible
    property alias valueText: value.text
    Rectangle {
        id: rectangle
        x: 220
        y: 140
        width: 200
        height: 200
        color: "#00000000"
        border.color: "#00000000"

        Rectangle {
            id: rectangle1
            color: "#c27001"
            visible: false
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 5

            Text {
                id: value
                x: 83
                y: 88
                text: qsTr("Text")
                font.pixelSize: 12
            }
        }
    }

}
