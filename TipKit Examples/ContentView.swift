//
//  ContentView.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 08/06/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var content: [Int] = [0,1,2,3,4]
    
    private let exampleTipOne = ExampleTipOne()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(content, id: \.self) { item in
                    Text("Item number \(item)")
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        content.append((content.count + 1))
                    }) {
                        Label("Add Item", systemImage: "plus")
                    }
                    .popoverMiniTip(tip: favoriteBackyardTip)
                }
            }
            Text("Select an item")
        }
    }
}

#Preview {
    ContentView()
}


struct ExampleTipOne: Tip {
    var title: Text {
        Text("Tip Title #1")
    }
    
    var message: Text {
        Text("This is the message for Tip #1")
    }
    
    var asset: Image {
        Image(systemName: "star")
    }
    
    var actions: [Action] {
        [
            Tip.Action(
                id: "learn-more",
                title: "Learn More"
            )
        ]
    }
}
