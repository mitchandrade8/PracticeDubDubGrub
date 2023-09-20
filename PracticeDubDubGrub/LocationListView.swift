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
                            Text("Location")
                                .font(.system(size: 32, weight: .thin, design: .serif))
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            
                            HStack {
                                Image("default-avatar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 35)
                                    .clipShape(Circle())
                                
                                Image("default-avatar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 35)
                                    .clipShape(Circle())
                                
                                Image("default-avatar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 35)
                                    .clipShape(Circle())
                            }
                        }
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


