import QtQuick 2.0

Item {
    id : macase;
    width: 100
    height: 100
    property alias elementText: element.text

    Rectangle {
        id: rectangle
        color: "#ebe1e1"
        anchors.fill: parent

        Text {
            id: element
            text: qsTr("Text")
            verticalAlignment: Text.AlignVCenter
            font.family: "Tahoma"
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 40
            focus : true ;
        }
    }
}
