//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu{
                Button("English"){
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Espanol"){
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Deutsche"){
                    language = "de"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("عربي"){
                    language = "ar"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
