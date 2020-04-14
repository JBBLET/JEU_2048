import QtQuick 2.0

Item {
    property alias valueVisible: value.visible
    property alias valueText: value.text
    width: 50
    height: 50

    Rectangle {
        id: rectangle
        color: "#00000000"
        border.width: 43
        anchors.fill: parent
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
                text: qsTr("Text")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                visible: true
                anchors.fill: parent
                font.pixelSize: 17
            }
        }
    }

}
