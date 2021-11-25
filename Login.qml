import QtQuick 2.9
import QtQuick.Controls 2.2

Rectangle {
    anchors.fill: parent
    signal loginSuccess()
    Column{
      anchors.centerIn: parent
      spacing:10
      TextField{
        id:userName
      }
      TextField{
         id:userPWD
      }
      Button{
          text:"登录"
          anchors.horizontalCenter: parent.horizontalCenter
          onClicked: {
             if(MainController.login(userName.text,userPWD.text))
               {
                       loginSuccess()
               }
             }
          }

      }
}
