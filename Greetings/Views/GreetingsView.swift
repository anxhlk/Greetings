//
//  ContentView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

struct GreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GreetingsView()
}
