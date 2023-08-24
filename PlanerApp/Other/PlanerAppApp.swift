//
//  PlanerAppApp.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import SwiftUI
import FirebaseCore

@main
struct PlanerAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
