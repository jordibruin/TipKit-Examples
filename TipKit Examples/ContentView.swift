//
//  ContentView.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 08/06/2023.
//

import SwiftUI
import TipKit

struct ContentView: View {
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
                
                Section {
                    NavigationLink {
                        ColoredTipScreen()
                    } label: {
                        Text("Colored")
                            .foregroundStyle(.purple)
                    }
                } header: {
                    Text("Custom Design")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
