//
//  ColoredTip.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import Foundation
import TipKit

struct ColoredTip: Tip {
    var title: Text {
        Text("Colored Tip Title")
            .bold()
            .foregroundStyle(.purple)
    }

    // Text needs to be optional, otherwise it does not show up.
    var message: Text? {
        Text("This is the message for the Colored Tip")
    }

    var asset: Image {
        Image(systemName: "heart")
    }
}
