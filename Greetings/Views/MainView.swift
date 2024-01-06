//
//  MainView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

// Portrait = Compact width, regular height
// iPad = Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isProtaitPhone: Bool {
        horizontalSizeClass == .compact &&
        verticalSizeClass == .regular
    }
    
    var isIPad: Bool{
        horizontalSizeClass == .regular &&
        verticalSizeClass == .regular
    }
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        // Portrait Mode ?
        if isProtaitPhone || isIPad {
            NavigationStack {
                GreetingsView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        } else {
            // Landspace Mode?
            NavigationStack{
                LandscapeGreetingsView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
