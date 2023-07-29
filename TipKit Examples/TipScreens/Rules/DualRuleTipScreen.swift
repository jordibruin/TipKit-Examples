//
//  DualRuleTipScreen.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import SwiftUI
import TipKit

struct DualRuleTipScreen: View {
    var body: some View {
        List {
            TipView(DualRuleTip())
            
            Section {
                Text("This screen shows a tip only when a certain event has happened. The event is triggered by tapping the button below.")
            }
            
            Section {
                Button {
                    DualRuleTip.eventOneHappened.donate()
                } label: {
                    Text("Fire Event One")
                }
                
                Button {
                    DualRuleTip.eventTwoHappened.donate()
                } label: {
                    Text("Fire Event Two")
                }
            }
        }
        .navigationTitle("Dual Rule Tip")
    }
}

#Preview {
    DualRuleTipScreen()
}
