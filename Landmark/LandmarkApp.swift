//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Jorge de Carvalho on 17/01/23.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
