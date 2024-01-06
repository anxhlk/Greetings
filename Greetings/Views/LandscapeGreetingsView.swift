//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
