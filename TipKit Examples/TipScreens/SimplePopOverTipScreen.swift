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
//        List {
            Text("This screen should show a popover tip which you can present from buttons in your toolbar for example. It's not working right now though..")
//        }
        
        .navigationTitle("Simple Popover Tip")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing, content: {
                Button(action: {
                    simplePopOverTipFavorited.toggle()
                }) {
                    Text("TEST")
                }
                .popoverTip(tip, arrowEdge: .top, action: { action in
                    print(action)
                })
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
