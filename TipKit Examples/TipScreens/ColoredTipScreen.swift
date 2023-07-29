//
//  ColoredTipScreen.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import SwiftUI
import TipKit

struct ColoredTipScreen: View {
    var body: some View {
        VStack {
            TipView(ColoredTip())
            Text("This screen shows a tips with styled / colored titles.")
        }
        
        .navigationTitle("Colored Tip")
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
