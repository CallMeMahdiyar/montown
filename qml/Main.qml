import QtQuick
import QtQuick.Controls
import QtQuick.Window

ApplicationWindow {
    id: window

    width: 1200
    height: 760
    visible: true

    title: "Montown"

    color: "#0d1117"

    property int currentPage: 0

    Row {
        anchors.fill: parent

        Rectangle {
            id: sidebar

            width: 220
            height: parent.height

            color: "#11161d"

            Column {
                anchors.fill: parent
                anchors.margins: 16
                spacing: 8

                Text {
                    text: "Montown"
                    color: "white"
                    font.pixelSize: 24
                    font.bold: true

                    leftPadding: 12
                    topPadding: 12
                    bottomPadding: 24
                }

                Rectangle {
                    width: parent.width
                    height: 48

                    radius: 10

                    color: window.currentPage === 0
                           ? "#1d2733"
                           : "transparent"

                    Text {
                        anchors.fill: parent
                        anchors.leftMargin: 14

                        verticalAlignment: Text.AlignVCenter

                        text: "Dashboard"

                        color: window.currentPage === 0
                               ? "white"
                               : "#8994a3"

                        font.pixelSize: 15
                    }

                    MouseArea {
                        anchors.fill: parent

                        onClicked: {
                            window.currentPage = 0
                        }

                        cursorShape: Qt.PointingHandCursor
                    }
                }

                Rectangle {
                    width: parent.width
                    height: 48

                    radius: 10

                    color: window.currentPage === 1
                           ? "#1d2733"
                           : "transparent"

                    Text {
                        anchors.fill: parent
                        anchors.leftMargin: 14

                        verticalAlignment: Text.AlignVCenter

                        text: "Work Time"

                        color: window.currentPage === 1
                               ? "white"
                               : "#8994a3"

                        font.pixelSize: 15
                    }

                    MouseArea {
                        anchors.fill: parent

                        onClicked: {
                            window.currentPage = 1
                        }

                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }
        }

        Rectangle {
            width: parent.width - sidebar.width
            height: parent.height

            color: "#0d1117"

            Text {
                anchors.centerIn: parent

                text: window.currentPage === 0
                      ? "Dashboard"
                      : "Work Time"

                color: "white"
                font.pixelSize: 32
                font.bold: true
            }
        }
    }
}