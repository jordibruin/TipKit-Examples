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
        VStack {
            Spacer()
            Color.green
                .frame(height: 100)
                .cornerRadius(8)

            Color.red
                .frame(height: 100)
                .cornerRadius(8)
            
            Color.blue
                .frame(height: 100)
                .cornerRadius(8)
            
            TipView(tip)
        }
        .toolbar(content: {
            ToolbarItem {
                Button(action: {
//                    Tips.showTips([tip])
                }, label: {
                    Text("Show Tip")
                })
            }
        })
        .padding(12)
        .navigationTitle("Simple Inline Tip")
    }
}

#Preview {
    SimpleInlineTipScreen()
}
