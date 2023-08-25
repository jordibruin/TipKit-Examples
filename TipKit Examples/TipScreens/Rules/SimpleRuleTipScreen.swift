//
//  SimpleRuleTipScreen.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import SwiftUI
import TipKit

struct SimpleRuleTipScreen: View {
    
    
    var body: some View {
        List {
            
            TipView(SimpleRuleTip())
            
            Section {
                Text("This screen shows a tip only when a certain event has happened. The event is triggered by tapping the button below.")
            }
            
            Section {
                Button {
                    Task {
                        await SimpleRuleTip.simpleRuleTipEnabled.donate()
                    }
                } label: {
                    Text("Enable this tip")
                }
            } footer: {
                Text("Donation count: \(SimpleRuleTip.simpleRuleTipEnabled.donations.count)")
            }
        }
        .navigationTitle("Simple Rule Tip")
    }
}

#Preview {
    SimpleRuleTipScreen()
}
