//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Élie BINGUE on 17/02/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
	@StateObject private var modelData = ModelData()
	
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(modelData)
        }
    }
}
