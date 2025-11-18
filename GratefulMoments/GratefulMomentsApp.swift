//
//  GratefulMomentsApp.swift
//  GratefulMoments
//
//  Created by Thiha Ye Yint Aung on 11/18/25.
//

import SwiftUI
import SwiftData

@main
struct GratefulMomentsApp: App {
    let dataContainer = DataContainer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dataContainer)
        }
        .modelContainer(dataContainer.modelContainer)
    }
}
