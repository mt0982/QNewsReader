import QtQuick 2.7
import "JS/Parser.js" as Parser

Page2Form {
    property string headerTitle: "News"

    tabButtonTop.onClicked: Parser.parseJSON(page0.currentCategoryID, "top")
    tabButtonLatest.onClicked: Parser.parseJSON(page0.currentCategoryID, "latest")
}
