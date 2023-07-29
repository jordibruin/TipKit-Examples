//
//  ColoredTipScreen.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import SwiftUI
import TipKit

struct ColoredTipScreen: View {
    
    let backgroundColored: Bool
    
    init(backgroundColored: Bool = false) {
        self.backgroundColored = backgroundColored
    }
    
    var body: some View {
        VStack {
            if backgroundColored {
                TipView(BackgroundColoredTip())
                    .tipBackground(.blue)
                Text("This screen shows a tip with a background color and differently styled text so you can create tips that match your apps aesthetic.")
            } else {
                TipView(ColoredTip())
                Text("This screen shows a tips with styled / colored titles.")
            }
                
            
        }
        .padding(12)
        .navigationTitle(backgroundColored ? "Background Colored Tip" : "Colored Tip")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing, content: {
                Button(action: {
                    
                }) {
                    Image(systemName: "star")
                }
                .popoverTip(ColoredTip(), arrowEdge: .top)
            }
            )
        }
    }
}

#Preview {
    ColoredTipScreen()
}
