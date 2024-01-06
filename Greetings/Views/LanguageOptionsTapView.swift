//
//  OptionsTapView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

struct LanguageOptionsTapView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Menu{
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
    label: {
        Image(systemName: "gearshape.fill")
            .foregroundStyle(.black)
    }
    }
}

#Preview {
    LanguageOptionsTapView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
