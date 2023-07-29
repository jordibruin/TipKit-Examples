//
//  DualRuleTip.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import Foundation
import TipKit

struct DualRuleTip: Tip {
    
    static let eventOneHappened = Event(id: "eventOneHappened")
    static let eventTwoHappened = Event(id: "eventTwoHappened")
    
    var title: Text {
        Text("Dual Rule Title")
    }

    // Text needs to be optional, otherwise it does not show up.
    var message: Text? {
        Text("This is the message for the Dual Rule Tip.")
    }

    var asset: Image? {
        Image(systemName: "lightbulb.fill")
    }
    
    var rules: [Rule] {
        #Rule(Self.eventOneHappened) { $0.donations.count >= 1 }
        #Rule(Self.eventTwoHappened) { $0.donations.count >= 1 }
    }
}


//In Xcode 15 beta 5 rules don't work in the simulator unless you add this to extra swift flags in build settings
//-external-plugin-path $(SYSTEM_DEVELOPER_DIR)/Platforms/iPhoneOS.platform/Developer/usr/lib/swift/host/plugins#$(SYSTEM_DEVELOPER_DIR)/Platforms/iPhoneOS.platform/Developer/usr/bin/swift-plugin-server
