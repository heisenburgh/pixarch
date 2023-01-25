/***************************************************************************
* Copyright (c) 2013 Abdurrahman AVCI <abdurrahmanavci@gmail.com>
*
* Permission is hereby granted, free of charge, to any person
* obtaining a copy of this software and associated documentation
* files (the "Software"), to deal in the Software without restriction,
* including without limitation the rights to use, copy, modify, merge,
* publish, distribute, sublicense, and/or sell copies of the Software,
* and to permit persons to whom the Software is furnished to do so,
* subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included
* in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
* OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
* OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
* ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
* OR OTHER DEALINGS IN THE SOFTWARE.
*
***************************************************************************/

import QtQuick 2.0
import SddmComponents 2.0

Rectangle {
    id: container
    width: 640
    height: 480

    LayoutMirroring.enabled: Qt.locale().textDirection == Qt.RightToLeft
    LayoutMirroring.childrenInherit: true

    property int sessionIndex: session.index

    TextConstants { id: textConstants }

    Connections {
        target: sddm

        onLoginSucceeded: {
            errorMessage.color = "steelblue"
            errorMessage.text = textConstants.loginSucceeded
        }

        onLoginFailed: {
            password.text = ""
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
        //visible: primaryScreen


        Image {
            id: rectangle
            anchors.centerIn: parent
            width: Math.max(320, mainColumn.implicitWidth + 50)
            height: Math.max(320, mainColumn.implicitHeight + 50)
	    

            //source: "rectangle.png"

            Column {
                id: mainColumn
                anchors.centerIn: parent
                spacing: 15
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: "white"
                    verticalAlignment: Text.AlignVCenter
                    height: text.implicitHeight
                    width: parent.width  
                    text: "Welcome To Pixarch"
                    //wrapMode: Text.WordWrap
	            font.family: "Monocraft"
		    font.pixelSize: 20
                    elide: Text.ElideRight
                    horizontalAlignment: Text.AlignHCenter
                }

                Column {
                    width: parent.width
                    spacing: 4
                    Text {
                        id: lblName
                        width: parent.width
                        text: textConstants.userName
			color: "white"
			font.family: "Monocraft"
                        font.bold: true
                        font.pixelSize: 12
                    }

                    TextBox {
                        id: name
                        width: parent.width; height: 30
                        text: userModel.lastUser
			font.family: "Monocraft"
                        font.pixelSize: 16
			color: Qt.rgba(0, 0, 0, 0.2)
			borderColor: "transparent"
			focusColor: Qt.rgba(0, 0, 0, 0.25)
			hoverColor: Qt.rgba(0, 0, 0, 0.2)
			textColor: "white"
                        KeyNavigation.backtab: rebootButton; KeyNavigation.tab: password

                        Keys.onPressed: {
                            if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                sddm.login(name.text, password.text, sessionIndex)
                                event.accepted = true
                            }
                        }
                    }
                }

                Column {
                    width: parent.width
                    spacing : 4
                    Text {
                        id: lblPassword
                        width: parent.width
                        text: textConstants.password
			color: "white"
                        font.family: "Monocraft"
			font.bold: true
                        font.pixelSize: 12
                    }

                    PasswordBox {
                        id: password
                        width: parent.width; height: 30
			font.family: "Monocraft"
                        font.pixelSize: 14

                        KeyNavigation.backtab: name; KeyNavigation.tab: session
			color: Qt.rgba(0, 0, 0, 0.2)
			borderColor: "transparent"
			focusColor: Qt.rgba(0, 0, 0, 0.25)
			hoverColor: Qt.rgba(0, 0, 0, 0.2)
			textColor: "white"

                        Keys.onPressed: {
                            if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                sddm.login(name.text, password.text, sessionIndex)
                                event.accepted = true
                            }
                        }
                    }
                }
		
                Row {
                    spacing: 4
                    width: parent.width
                    z: 100
                    Column {
                        z: 100
                        width: parent.width 
                        spacing : 4
                        anchors.bottom: parent.bottom

                        Text {
                            id: lblSession
                            width: parent.width
                            text: textConstants.session
                            wrapMode: TextEdit.WordWrap
                            font.family: "Monocraft"
			    font.bold: true
                            font.pixelSize: 12
			    color: "white"
                        }

                        ComboBox {
                            id: session
                            width: parent.width; height: 30
			    font.family: "Monocraft"
                            font.pixelSize: 14

                            arrowIcon: "angle-down.png"
			    arrowColor: "transparent"
                            color: "25000000"
			    textColor: "#da8548"
                            borderColor: "transparent"
                            focusColor: Qt.rgba(0, 0, 0, 0.25)
                            hoverColor: Qt.rgba(0, 0, 0, 0.2)
                            textColor: "#da8548"
                            model: sessionModel
                            index: sessionModel.lastIndex

                            KeyNavigation.backtab: password; KeyNavigation.tab: layoutBox
                        }
                    }
		    
                    Column {
                        z: 101
                        width: parent.width * 0.7
                        spacing : 0
                        anchors.bottom: parent.bottom

                        Text {
                            id: lblLayout
                            width: parent.width
                            //text: textConstants.layout
                            wrapMode: TextEdit.WordWrap
                            font.bold: true
                            font.pixelSize: 12
                        }

                    }
                }

                Column {
                    width: parent.width
                    Text {
                        id: errorMessage
                        anchors.horizontalCenter: parent.horizontalCenter
                        //text: textConstants.prompt
                        font.family: "Monocraft"
			font.pixelSize: 10
                    }
                }

                Row {
                    spacing: 2
                    anchors.horizontalCenter: parent.horizontalCenter
                    property int btnWidth: Math.max(loginButton.implicitWidth,
                                                    shutdownButton.implicitWidth,
                                                    rebootButton.implicitWidth, 80) + 8
                    Button {
                        id: loginButton
			font.family: "Monocraft"
                        text: textConstants.login
                        width: parent.btnWidth
			color: Qt.rgba(0, 0, 0, 0.2)
			activeColor: Qt.rgba(0, 0, 0, 0.2)
			pressedColor: Qt.rgba(0, 0, 0, 0.25)	
                        onClicked: sddm.login(name.text, password.text, sessionIndex)

                        KeyNavigation.backtab: layoutBox; KeyNavigation.tab: shutdownButton
                    }

                    Button {
                        id: shutdownButton
			font.family: "Monocraft"
                        text: textConstants.shutdown
                        width: parent.btnWidth

			color: Qt.rgba(0, 0, 0, 0.2)
			activeColor: Qt.rgba(0, 0, 0, 0.2)
			pressedColor: Qt.rgba(0, 0, 0, 0.25)	
                        onClicked: sddm.powerOff()

                        KeyNavigation.backtab: loginButton; KeyNavigation.tab: rebootButton
                    }

                    Button {
                        id: rebootButton
			font.family: "Monocraft"
                        text: textConstants.reboot
                        width: parent.btnWidth

			color: Qt.rgba(0, 0, 0, 0.2)
			activeColor: Qt.rgba(0, 0, 0, 0.2)
			pressedColor: Qt.rgba(0, 0, 0, 0.25)	
                        onClicked: sddm.reboot()

                        KeyNavigation.backtab: shutdownButton; KeyNavigation.tab: name
                    }
                }
            }
        }
    }
    Component.onCompleted: {
        if (name.text == "")
            name.focus = true
        else
            password.focus = true
    }
}


