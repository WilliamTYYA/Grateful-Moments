//
//  ContentView.swift
//  GratefulMoments
//
//  Created by Thiha Ye Yint Aung on 11/18/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    var body: some View {
        VStack {
            Button("Create a Grateful Moment") {
                isPresented = true
            }
            .buttonStyle(.bordered)
            .sheet(isPresented: $isPresented) {
                MomentEntryView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
