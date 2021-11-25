import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    function showLoginPage()
    {
        mainLoader.sourceComponent =loginCom
    }

    function showHomePage()  {

        mainLoader.sourceComponent =homeCom
    }

    Loader{
        id:mainLoader
        anchors.fill:parent
        sourceComponent:loginCom
    }

    Component{
       id:loginCom
       Login{
           anchors.fill:parent
            onLoginSuccess:{  //loginSuccess
               showHomePage()
            }
       }
    }

     Component{
            id:homeCom
            Home{
               anchors.fill:parent
               onExit:{
                  showLoginPage()
               }
            }
               }
}
