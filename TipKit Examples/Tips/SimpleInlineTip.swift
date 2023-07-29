//
//  SimpleInlineTip.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 28/07/2023.
//

import Foundation
import TipKit

struct SimpleInlineTip: Tip {
    var title: Text {
        Text("Simple Inline Tip Title")
    }

    // Text needs to be optional, otherwise it does not show up.
    var message: Text? {
        Text("This is the message for the Simple Inline Tip")
    }

    var asset: Image {
        Image(systemName: "heart")
    }

    var actions: [Action] {
        [
            Tip.Action(
                id: "learn-more",
                title: "Learn More"
            )
        ]
    }
}
