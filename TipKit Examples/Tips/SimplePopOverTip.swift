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
        Text("Simple Popover Title")
    }

    // Text needs to be optional, otherwise it does not show up.
    var message: Text? {
        Text("This is the message for the Simple Popover Tip.")
    }

    var asset: Image? {
        Image(systemName: "lightbulb.fill")
    }

    var options: [TipOption] {
        [Tip.MaxDisplayCount(100)]
    }
}
