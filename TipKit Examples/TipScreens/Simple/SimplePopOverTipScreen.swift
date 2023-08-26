//
//  SimplePopOverTipScreen.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 28/07/2023.
//

import SwiftUI
import TipKit

struct SimplePopOverTipScreen: View {
    
    @State var favorited: Bool = false
    
    var body: some View {
        List {
            Text("This screen shows a popover tip which you can present from buttons in your toolbar for example.")
        }
        .navigationTitle("Simple Popover Tip")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing, content: {
                Button(action: {
                    favorited.toggle()
                }) {
                    Image(systemName: favorited ? "star.fill" : "star")
                }
                .buttonStyle(.plain) // Currently toolbar buttons that want to show a popover tip need to have a style specified. Please see https://developer.apple.com/forums/thread/735961.
                .popoverTip(SimplePopOverTip(), arrowEdge: .top)
            }
            )
        }
    }
}

struct SimplePopOverTipScreen_Previews: PreviewProvider {
    static var previews: some View {
        SimplePopOverTipScreen()
    }
}
