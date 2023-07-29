//
//  PopOverWithOptionsScreen.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 29/07/2023.
//

import SwiftUI

struct PopOverWithActionsScreen: View {
    
    @State var favorited: Bool = false
    
    var body: some View {
        List {
            Text("This screen shows a popover tip with options that the user can tap on.")
        }
        .navigationTitle("Simple Popover Tip")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing, content: {
                Button(action: {
                    favorited.toggle()
                }) {
                    Image(systemName: favorited ? "star.fill" : "star")
                }
                .popoverTip(PopOverWithActionsTip(), arrowEdge: .top, action: { action in
                    if action.id == "learn-more" {
                        print("Used tapped on Learn More")
                    }
                    
                    if action.id == "remove" {
                        print("Used tapped on Remove")
                    }
                })
            }
            )
        }
    }
}

#Preview {
    PopOverWithActionsScreen()
}
