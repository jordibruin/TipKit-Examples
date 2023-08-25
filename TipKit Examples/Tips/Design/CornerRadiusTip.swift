//
//  CornerRadiusTip.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import Foundation
import TipKit

struct CornerRadiusTip: Tip {
    var title: Text {
        Text("Corner Radius Tip Title")
    }

    // Text needs to be optional, otherwise it does not show up.
    var message: Text? {
        Text("This is the message for the Corner Radius Tip")
    }

    var image: Image {
        Image(systemName: "heart")
    }
}
