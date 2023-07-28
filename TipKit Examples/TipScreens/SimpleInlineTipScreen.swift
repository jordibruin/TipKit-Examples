//
//  SimpleInlineTipScreen.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 28/07/2023.
//

import SwiftUI
import TipKit

struct SimpleInlineTipScreen: View {
    
    private let tip = SimpleInlineTip()
    
    var body: some View {
        List {
            TipView(tip)
        }
        .navigationTitle("Simple Inline Tip")
    }
}

#Preview {
    SimpleInlineTipScreen()
}
