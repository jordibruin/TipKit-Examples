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

    var message: Text {
        Text("This is the message for Tip #1")
    }

    var asset: Image {
        Image(systemName: "star")
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
