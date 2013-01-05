import QtQuick 2.0
import Ubuntu.Components 0.1
import QtMultimedia 5.0

Rectangle {
    id: root
    width: units.gu(60)
    height: units.gu(80)
    Button {
    width: 100
    height: 136
        anchors.centerIn: parent
    iconSource: "assets/jono.png"
        onClicked: {
        var num
        num = new String(Math.floor(Math.random()*8)+1)
    console.log(num)
        community.source = "assets/"+num+".ogg"
        community.play()
        }
    }
    Audio {
        id: community
        source: "assets/1.ogg"
    }

}
