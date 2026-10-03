import QtQuick
import QtQuick.Controls 

    Rectangle{
        anchors.fill : parent
        color: "#0d1117"
        property string savedStartTime: ""
        property string savedStopTime: ""
        property string savedHourlySalary: ""
        width: 300
        height: 100
        // Text{
        //     text: "Work Time"
        //     color: "white"
        //     font.pixelSize: 32
        //     anchors.centerIn: parent
        // }
        Rectangle{
            anchors.centerIn : parent
        Text{
            id: textstart
            text: "Start Time"
            color: "white"
            font.pixelSize: 16
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            }
            Rectangle{
                width: 80
                height: 35
                color: "#1d2733"
                radius: 8
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.verticalCenter: parent.verticalCenter
            TextInput{
                id: startTimeInput
                text: "8:30"
                anchors.fill: parent
                color: "white"
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                font.pixelSize: 15
            }



            }
            Text{
            id: textstop
            text: "Stop Time"
            color: "white"
            font.pixelSize: 16
            anchors.top: textstart.bottom
            anchors.topMargin: 50
            anchors.right: parent.right
            anchors.verticalCenter: parent.bottom
            }
            Rectangle{
                width: 80
                height: 35
                color: "#1d2733"
                radius: 8
                anchors.top: textstop.top
                anchors.left: parent.left
                anchors.leftMargin: 30
            TextInput{
                id: stopTimeInput
                text: "8:30"
                anchors.fill: parent
                color: "white"
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                font.pixelSize: 15
            }
            }



            Text{
            id: texthourlysalary
            text: "Hourly Salary"
            color: "white"
            font.pixelSize: 16
            anchors.top: textstop.bottom
            anchors.topMargin: 190
            anchors.right: parent.right
            // anchors.verticalCenter: parent.bottom
            }
            Rectangle{
                width: 80
                height: 35
                color: "#1d2733"
                radius: 8
                anchors.top: texthourlysalary.top
                anchors.left: parent.left
                anchors.leftMargin: 30
            TextInput{
                id: inputhourlysalary
                text: "100"
                anchors.fill: parent
                color: "white"
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                font.pixelSize: 15
            }
            }



        }
            Text{
                text: savedStartTime
                font.pixelSize: 22
                color: "white"
                anchors.top: parent.top
                anchors.topMargin: 50
            }
            Button{
                text: "Save"
                width: 80
                height: 50
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 50
                background: Rectangle{
                    color: '#0066ff'
                }
                onClicked: {
                    savedStartTime = startTimeInput.text
                    savedStopTime = stopTimeInput.text
                    savedHourlySalary = inputhourlysalary.text
                    console.log(savedStartTime)
                    console.log(savedStopTime)
                    console.log(savedHourlySalary)
                }
                // contentItem: Text{
                //     color: "white"
                // }
            }
    }
    
