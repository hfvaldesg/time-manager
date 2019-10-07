import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13
import QtQuick.Controls.Material 2.13

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 1000
    height: 600
    minimumWidth: 600
    minimumHeight: 300
    title: "Time Manager"    
    Rectangle{
        x: 0
        y: 0
        z: 2 
        id: panel
        implicitWidth: sidePanel.width
        width: sidePanel.width
        color: "transparent"
        SidePanel{
            id: sidePanel
            visible: true
        }
    }      

    Rectangle {
        id: columnLayout
        SplitView.maximumWidth: applicationWindow.width - sidePanel.width
        implicitWidth: applicationWindow.width - sidePanel.width
        width: applicationWindow.width - sidePanel.width
        //Layout.fillWidth: true
        anchors.left: panel.right
        anchors.leftMargin: 5        

        height: applicationWindow.height
        TimerView {
            id: timerView
            visible: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            transformOrigin: Item.Center
            spacing: 10
        }

        HistoryView {
            id: historyView
            visible: false
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            transformOrigin: Item.Center
        }
        PomodoroView {
            id:pomodoroView
            visible: false
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            transformOrigin: Item.Center
        }
    }   
}
