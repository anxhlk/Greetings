//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitle: LocalizedStringKey
    
    let subtitles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("Greetings!")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
        }
        .onTapGesture {
            // Change subtitle
            subtitle = subtitles
                .randomElement() ?? LocalizedStringKey( "Exploring iOS Programming")
        }
        
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant( "Exploring iOS Programming"))
}
