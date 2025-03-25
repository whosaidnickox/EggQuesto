//
//  Lukizseki.swift
//  EggQuesto
//
//  Created by Nicolae Chivriga on 25/03/2025.
//

import SwiftUI


struct Lukizseki: View {
    var body: some View {
        ZStack {
            Color.init(hex: "#C79683")
                .ignoresSafeArea()
            
            Image("oietobjupro")
                
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: QuezBack())
    }
        
}
extension View {
    func acumsuniciw() -> some View {
        self.modifier(Cestanirsw())
    }
}
