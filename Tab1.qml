import QtQuick 2.0
import Ubuntu.Components 1.1
// Needed for singletons QTBUG-34418
import "."

Tab {
    title: i18n.tr("Tab 1")

    Action {
        id: reloadAction
        text: "Reload"
        iconName: "reload"
        onTriggered: {
            console.log("reload is clicked")
        }
    }

    page: Page {
        Label {
            anchors.centerIn: parent
            text: i18n.tr("This is page one")
            color: Settings.textColor
            fontSize: Settings.textSize
        }

        tools: ToolbarItems {
            ToolbarButton {
                action: reloadAction
            }
        }
    }
}
