//
//  SimplePopOverTip.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 28/07/2023.
//

import Foundation
import TipKit

struct SimplePopOverTip: Tip {
    var title: Text {
        Text("Tip Title #1")
    }

    // Text needs to be optional, otherwise it does not show up.
    var message: Text? {
        Text("This is the message for the Simple Popover Tip.")
    }

    var asset: Image? {
        Image(systemName: "lightbulb.fill")
    }

    var actions: [Action] {
        [
            Tip.Action(
                id: "learn-more",
                title: "Learn More"
            ),
            Tip.Action(
                id: "remove",
                title: "Remove"
            )
        ]
    }
}
