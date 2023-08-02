//
//  ListCellTip.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 02/08/2023.
//

import Foundation
import TipKit

struct ListCellTip: Tip {
    
    static let showTip = Event(id: "showTip")
    
    var title: Text {
        Text("List Cell Title")
    }

    // Text needs to be optional, otherwise it does not show up.
    var message: Text? {
        Text("This is the message for the List Cell Tip.")
    }

    var asset: Image? {
        Image(systemName: "lightbulb.fill")
    }
    
    var rules: [Rule] {
        #Rule(Self.showTip) { $0.donations.count >= 1 }
    }
}
