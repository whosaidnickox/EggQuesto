//
//  QuezBack.swift
//  EggQuesto
//
//  Created by Nicolae Chivriga on 25/03/2025.
//

import SwiftUI


struct QuezBack: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            self.dismiss()
        } label: {
            Image("bnazidk")
        }

    }
}
