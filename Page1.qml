import QtQuick 2.7
import "JS/Parser.js" as Parser

Page1Form {

    tabButtonTop.onClicked: Parser.parseJSON("top")
    tabButtonLatest.onClicked: Parser.parseJSON("latest")
}
