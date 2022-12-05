import QtQuick 2.0
import SddmComponents 2.0

Rectangle {
    width: 640
    height: 480
    
    LayoutMirroring.enabled: Qt.locale().textDirection == Qt.RightToLeft
    LayoutMirroring.childrenInherit: true

    TextConstants { id: textConstants }
    
    Connections {
        target: sddm
        onLoginSucceeded: {}
        onLoginFailed: {
            pw_entry.text = ""
            pw_entry.focus = true
            errorMessage.color = "red"
            errorMessage.text = textConstants.loginFailed
        }
    }
    
    Background {
        anchors.fill: parent
        source: config.background
        fillMode: Image.PreserveAspectCrop
        onStatusChanged: {
            if (status == Image.Error && source != config.defaultBackground) {
                source = config.defaultBackground
            }
        }
    }
    
    Rectangle {
        anchors.fill: parent
        color: "transparent"
        Rectangle {
            width: 400
            height: 250
            color: "transparent"
            anchors.centerIn: parent
            
            Rectangle {
                id: entries
                width: parent.width
                height: 200
                //color: Qt.rgba(33/255, 33/255, 33/255, 0.8)
                color: "transparent"
                radius: 4
                
                Column {
                    anchors.centerIn: parent
                    spacing: 20
                    
                    Row {
                   
                        TextBox {
                            id: user_entry
                            radius: 3
                            width: 250
                            anchors.verticalCenter: parent.verticalCenter
                            text: "Username"
                            font.family: "Monocraft"
			    font.pixelSize: 16
                            color: "transparent"
                            borderColor: "transparent"
                            focusColor: Qt.rgba(0, 0, 0, 0.25)
                            hoverColor: Qt.rgba(0, 0, 0, 0.2)
                            textColor: "white"
                            
                            KeyNavigation.backtab: session; KeyNavigation.tab: pw_entry
                        }
                    }
                    
                    Row {
                        PasswordBox {
                            id: pw_entry
                            radius: 3
                            width: 250
			    text: "Password"
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 16
                            color: "transparent"
                            borderColor: "transparent"
                            focusColor: Qt.rgba(0, 0, 0, 0.25)
                            hoverColor: Qt.rgba(0, 0, 0, 0.2)
                            textColor: "white"
                            focus: true
                            font.family: "Monocraft" 
                            KeyNavigation.backtab: user_entry; KeyNavigation.tab: loginButton

                            Keys.onPressed: {
                                if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                    sddm.login(user_entry.text, pw_entry.text, session.index)
                                    event.accepted = true
                                }
                            }
                        }
                    }
                    
                    Row {
                        Text {
                            id: errorMessage
                            anchors.verticalCenter: parent.verticalCenter
                            text: ""
                            font.pixelSize: 15
                        }
                    }
                    
                    Row {
                        anchors.horizontalCenter: parent.horizontalCenter
                        Button {
                            id: loginButton
                            radius: 3
                            text: textConstants.login
                            width: 150
			    font.family: "Monocraft"
                            color: Qt.rgba(0, 0, 0, 0.2)
                            activeColor: Qt.rgba(0, 0, 0, 0.2)
                            pressedColor: Qt.rgba(0, 0, 0, 0.25)
                            font.pixelSize: 15
                            font.bold: false
                            onClicked: sddm.login(user_entry.text, pw_entry.text, session.index)
                            KeyNavigation.backtab: pw_entry; KeyNavigation.tab: restart
                        }
                    }
                    
                }
                
            }
            
        }
        
    }
    
    Component.onCompleted: {
        if (user_entry.text === "")
            user_entry.focus = true
        else
            pw_entry.focus = true
        //pw_entry.focus = true
    }
}
