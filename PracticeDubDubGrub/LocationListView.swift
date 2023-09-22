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
                            .padding(.vertical, 6)
                        
                        VStack(alignment: .leading) {
                            Text("Test Location")
                                .font(.system(size: 32, weight: .thin, design: .serif))
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            
                            HStack {
                                AvatarView(size: 35)
                                AvatarView(size: 35)
                                AvatarView(size: 35)
                                AvatarView(size: 35)
                                AvatarView(size: 35)
                            }
                        }
                        .padding(.leading)
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

struct AvatarView: View {
    
    var size: CGFloat
    
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(height: size)
            .clipShape(Circle())
    }
}
