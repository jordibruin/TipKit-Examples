//
//  SimplePopOverTipScreen.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 28/07/2023.
//

import SwiftUI
import TipKit

struct SimplePopOverTipScreen: View {
    
    @AppStorage("simplePopOverTipFavorited") var simplePopOverTipFavorited: Bool = false
    
    private let tip = SimplePopOverTip()
    
    var body: some View {
        List {
            Text("This screen shows a popover tip which you can present from buttons in your toolbar for example.")
        }
        .navigationTitle("Simple Popover Tip")
        .toolbar {
            ToolbarItem {
                Button(action: {
                    simplePopOverTipFavorited.toggle()
                }) {
                    Label("Favorite", systemImage: simplePopOverTipFavorited ? "heart.fill" : "heart")
                }
                .popoverTip(tip, arrowEdge: .trailing, action: { action in
                    print(action)
                })
            }
        }
    }
}

struct SimplePopOverTipScreen_Previews: PreviewProvider {
    static var previews: some View {
        SimplePopOverTipScreen()
    }
}
