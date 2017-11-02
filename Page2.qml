import QtQuick 2.7
import "JS/Parser.js" as Parser

Page2Form {

    tabButtonTop.onClicked: Parser.parseJSON("top")
    tabButtonLatest.onClicked: Parser.parseJSON("latest")
}
