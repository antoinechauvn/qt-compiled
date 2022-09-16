import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    id: splashScreen
    width: 380
    height: 580
    visible: true
    title: qsTr("Hello, " + username)
    color: "#151515"

    // Custom Properties
    property string username
    property string password

    property string clickPos: "1,1"

    MouseArea {
            anchors.fill: parent
            property real anchorX
            property real anchorY
            onPressed: { anchorX = mouse.x; anchorY = mouse.y }
            onMouseXChanged: if (pressed) splashScreen.x += mouse.x-anchorX
            onMouseYChanged: if (pressed) splashScreen.y += mouse.y-anchorY
      }

    Label {
        id: label1
        x: 55
        y: 330
        opacity: 1
        color: "#ffffff"
        text: qsTr("Your password: " + password)
        anchors.verticalCenter: label.verticalCenter
        anchors.verticalCenterOffset: 20
        font.family: "Segoe UI"
        anchors.bottomMargin: 20
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 10
    }

    Label {
        id: label
        x: 100
        y: 294
        opacity: 1
        color: "#ffffff"
        text: qsTr("Hello, " + username)
        anchors.verticalCenter: parent.verticalCenter
        font.family: "Segoe UI"
        anchors.bottomMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 16
    }



}
