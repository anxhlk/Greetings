//
//  TitleView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI
import TipKit

/// This is the title view of the app
/// which displays a title, a substitute, which randomly changes on tap
/// and we have colorful disc which changes color on tap and
/// that is amazing

struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    private var greetingsTip = GreetingsTip()
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
                .popoverTip(greetingsTip)
            
            Spacer()
            
            RotatableCircleView()
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}

