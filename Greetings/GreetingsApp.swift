//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI
import TipKit
// Portrait = Compact width, regular height

@main
struct GreetingsApp: App {
    @AppStorage("language") var language:String = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection{
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    let resetTip = true
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task{
                    if resetTip {
                        try? Tips.resetDatastore()
                    }
                    
                    // Configure and load your tips at app launch.
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
