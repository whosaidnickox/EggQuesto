//
//  Setgbgmw.swift
//  EggQuesto
//
//  Created by Nicolae Chivriga on 25/03/2025.
//

import SwiftUI
import Lottie


struct Setgbgmw: View {
    @State var show: Bool = false
    var body: some View {
        ZStack {
            Color.init(hex: "#C79683")
                .ignoresSafeArea()
            
            if !show {
                LottieView(animation: .named("gqizow"))
                    .playing(loopMode: .loop )
                    .animationDidFinish({ completed in
                    })
                    .resizable()
                    .frame(width: 125, height: 125)
            }
            
            WKWebViewRepresentable(url: URL(string: "https://freepolicyourgheim.xyz/red/game/egg-quest/")!) {
                show = true
                let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                impactHeavy.impactOccurred()
            }
            .mask {
                Rectangle()
                    .padding(8)
            }
            
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: QuezBack())
    }
}


struct Swiper: ViewModifier {
    var onDismiss: () -> Void
    @State private var offset: CGSize = .zero

    func body(content: Content) -> some View {
        content
//            .offset(x: offset.width)
            .animation(.interactiveSpring(), value: offset)
            .simultaneousGesture(
                DragGesture()
                    .onChanged { value in
                                      self.offset = value.translation
                                  }
                                  .onEnded { value in
                                      if value.translation.width > 70 {
                                          onDismiss()
                                  
                                      }
                                      self.offset = .zero
                                  }
            )
    }
}
