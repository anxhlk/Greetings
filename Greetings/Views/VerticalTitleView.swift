//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle )
            
            
            RotatableCircleView()
            
            Spacer()
        }
        .padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
