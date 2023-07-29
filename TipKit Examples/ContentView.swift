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
                        Label("Popover", systemImage: "rectangle.fill.on.rectangle.fill")
                    }

                    NavigationLink {
                        SimpleInlineTipScreen()
                    } label: {
                        Label("Inline", systemImage: "list.bullet.below.rectangle")
                    }
                } header: {
                    Text("Simple Tips")
                }
                
                Section {
                    NavigationLink {
                        ColoredTipScreen()
                    } label: {
                        Label("Text Colored", systemImage: "paintpalette.fill")
                            .foregroundStyle(.purple)
                    }
                    
                    NavigationLink {
                        ColoredTipScreen(backgroundColored: true)
                    } label: {
                        Label("Background Colored", systemImage: "paintbrush.fill")
                            .foregroundStyle(.blue)
                    }
                    
                    NavigationLink {
                        CornerRadiusTipScreen()
                    } label: {
                        Label("Custom Corner Radius", systemImage: "app.fill")
                            .foregroundStyle(.green)
                    }
                } header: {
                    Text("Custom Design")
                }
                
                Section {
                    NavigationLink {
                        PopOverWithOptionsScreen()
                    } label: {
                        Label("Popover with Options", systemImage: "dock.rectangle")
                            .foregroundStyle(.orange)
                    }
                } header: {
                    Text("Tips with Options")
                }
            }
            .navigationTitle("TipKit Examples")
        }
    }
}

#Preview {
    ContentView()
}
