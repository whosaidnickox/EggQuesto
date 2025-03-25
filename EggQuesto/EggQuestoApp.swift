//
//  EggQuestoApp.swift
//  EggQuesto
//
//  Created by Nicolae Chivriga on 25/03/2025.
//

import SwiftUI

@main
struct EggQuestoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoadingMainView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
