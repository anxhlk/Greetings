//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

struct RotatableCircleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle{
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient{
        AngularGradient.init(gradient: Gradient(colors: [
            .pink, .purple, .blue, .orange, .yellow]), center: .center, angle: .zero)
        
    }
    var body: some View {
        Circle()
            .strokeBorder(angularGradient,
                          lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation{
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
