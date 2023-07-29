//
//  SimpleRuleTip.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import Foundation
import TipKit

struct SimpleRuleTip: Tip {
    
    static let simpleRuleTipEnabled = Event(id: "simpleRuleTipEnabled")
    
    var title: Text {
        Text("Simple Rule Title")
    }

    // Text needs to be optional, otherwise it does not show up.
    var message: Text? {
        Text("This is the message for the Simple Rule Tip.")
    }

    var asset: Image? {
        Image(systemName: "lightbulb.fill")
    }
    
    var rules: [Rule] {
        #Rule(Self.simpleRuleTipEnabled) { $0.donations.count >= 1 }
    }
}
