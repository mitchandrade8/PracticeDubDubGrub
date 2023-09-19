//
//  AppTabView.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/18/23.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            LocationListView()
                .tabItem {
                    Label("Locations", systemImage: "building")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .accentColor(.brandPrimary)
    }
}

#Preview {
    AppTabView()
}
