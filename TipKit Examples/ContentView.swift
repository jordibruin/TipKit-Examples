//
//  ContentView.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 08/06/2023.
//

import SwiftUI
import TipKit

struct ContentView: View {
    
    
    private let tip = SimplePopOverTip()
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        SimplePopOverTipScreen()
                    } label: {
                        Text("Popover")
                    }
                    
                    NavigationLink {
                        SimpleInlineTipScreen()
                    } label: {
                        Text("Inline")
                    }
                } header: {
                    Text("Simple Tips")
                }
//
                
                Section {
                    Button {
                        Tips.showAllTips()
                    } label: {
                        Text("Show All Tips")
                    }
                    
                    Button {
                        Tips.hideAllTips()
                    } label: {
                        Text("Hide All Tips")
                    }
                    
                    Button {
                        
//                        Tips.showTips([simplePopOverTip])
                        
                    } label: {
                        Text("Show Tip")
                    }
                } header: {
                    Text("Testing")
                }
                
                Section {
                    Button(action: {
                        print("TESt")
                    }, label: {
                        Text("TEST")
                    })
                    .popoverTip(tip, arrowEdge: .trailing, action: { action in
                        print(action)
                    })
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}


//Section {
//                    NavigationLink {
//
//                    } label: {
//                        Text("Show after 3 visits")
//                    }
//
//                    NavigationLink {
//
//                    } label: {
//                        Text("Show only once")
//                    }
//                } header: {
//                    Text("Context Dependent Tips")
//                }
               
//                Section {
//                    NavigationLink {
//
//                    } label: {
//                        Text("Adjust Tip Options")
//                    }
//
//                    // Max display count
//                    // dismiss ignore policy
//                    // dismiss tip when user used feature (invalidate)
//                } header: {
//                    Text("Tip Options")
//                }
               
               
//                Section {
//                    NavigationLink {
//
//                    } label: {
//                        Text("Display Frequency")
//                    }
//
//                    NavigationLink {
//
//                    } label: {
//                        Text("Dismissal Policy")
//                    }
//
//
//                } header: {
//                    Text("Display settings")
//                }