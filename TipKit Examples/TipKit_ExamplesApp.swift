//
//  TipKit_ExamplesApp.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 08/06/2023.
//

import SwiftUI
import TipKit

@main
struct TipKit_ExamplesApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    try? await Tips.configure {
                        DatastoreLocation(.applicationDefault, shouldReset: true)
                        DisplayFrequency.immediate
                    }
                }
        }
    }
}
