//
//  PopOverWithActionsTip.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import Foundation
import TipKit

struct PopOverWithActionsTip: Tip {
    var title: Text {
        Text("PopOver With Actions Title")
    }

    // Text needs to be optional, otherwise it does not show up.
    var message: Text? {
        Text("This is the message for the Popover with options Tip.")
    }

    var image: Image? {
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
