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
            
            // You will need to configure TipKit at launch
            // Provide different configurations depending on your needs
                .task {
                    try? Tips.configure(
                        [
                            // Reset which tips have been shown and what parameters have been tracked, useful during testing and for this sample project
                            .datastoreLocation(.applicationDefault),
                            
                            // When should the tips be presented? If you use .immediate, they'll all be presented whenever a screen with a tip appears.
                            // You can adjust this on per tip level as well
                            .displayFrequency(.immediate)
                        ]
                    )
                }
        }
    }
}
