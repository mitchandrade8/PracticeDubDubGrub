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
                    HStack {
                        Image("default-square-asset")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 80)
                            .clipShape(Circle())
                        
                        Text("Location")
                            .font(.system(size: 32, weight: .regular, design: .serif))
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

//struct LocationViewPic: View {
//    var image: Image?
//    var locationName: String?
//    
//}


