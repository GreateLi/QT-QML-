import QtQuick 2.9
import QtQuick.Controls 2.2

 Item{
    signal exit()

     Image{
          anchors.fill: parent
          cache:false
          source: "login.png"
     }
     Button{
         text: "退出"
         anchors.bottom: parent.bottom
         anchors.right: parent.right
         anchors.margins: 20
         onClicked: {
            exit()
         }
     }
 }
