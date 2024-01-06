//
//  BackgroundView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

/// This is the background view which contains the linear graident
struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [
                .myBlue1,
                .myBlue2
            ], startPoint: .topLeading,endPoint: .bottomTrailing)
        .opacity(1)
        .ignoresSafeArea()
        
    }
}

#Preview {
    BackgroundView()
}
