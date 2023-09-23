//
//  LocationListView.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/18/23.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { item in
                    NavigationLink(destination: LocationDetailView()) {
                        LocationCell()
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Grub spots")
        }
    }
}

#Preview {
    LocationListView()
}

/// I did not create mock data and then extract a subview, see where i went different about making my UI then SA
//struct LocationViewPic: View {
//    var image: Image?
//    var locationName: String?
//    
//}



