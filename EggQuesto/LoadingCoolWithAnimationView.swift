//
//  LoadingCoolWithAnimationView.swift
//  EggQuesto
//
//  Created by Nicolae Chivriga on 25/03/2025.
//

import SwiftUI


struct LoadingCoolWithAnimationView: View {
    @State private var animate = false
    @State var textLoading: [String] = ["L", "O", "A", "D", "I", "N", "G"]
    var delay: Double = 0.0
    @State var index: Int
    var body: some View {
        Circle()
            .frame(width: 20, height: 20)
            .foregroundColor(.brown)
            .overlay {
                Text(textLoading[index])
                    .font(.system(size: 20, weight: .semibold, design: .monospaced))
                    .foregroundStyle(.white)
            }
            .offset(y: animate ? 0 : -10)
            .scaleEffect(animate ? 1.2 : 0)
            .rotationEffect(.degrees(animate ? 360 : 0))
            .animation(
                Animation.interpolatingSpring(stiffness: 100, damping: 5)
                    .repeatForever()
                    .delay(delay),
                value: animate
            )
            .onAppear {
                animate = true
            }
    }
}

/// A loading view that arranges several bouncing dots horizontally.
struct BouncingLoadingView: View {
    // Adjust the number of dots and delay between them for a lively effect.
    private let dotCount = 7
    private let delayIncrement = 0.15
   
    var body: some View {
        HStack(spacing: 15) {
            ForEach(0..<dotCount, id: \.self) { index in
                LoadingCoolWithAnimationView(delay: Double(index) * delayIncrement, index: index)
                  
            }
        }
    }
}



