//
//  LocationDetailView.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/20/23.
//

import SwiftUI

struct LocationDetailView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack() {
                    Image("default-banner-asset")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 140)
                        
                    HStack() {
                        Label("123 Main Street", systemImage: "mappin.and.ellipse")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Spacer()
//                        Image(systemName: "mappin.and.ellipse")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(height: 15)
//                            .foregroundColor(.secondary)
//                        
//                        Text("15 Market St Ste 40")
//                            .font(.system(size: 12, weight: .thin, design: .serif))
//                            .foregroundColor(.secondary)
                        
                    }
                    .padding()
                    
                }
                .padding(.bottom, 40)
                
                Text("It is Chipotle. Enough said.")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .padding(.horizontal)
                
                HStack(spacing: 20) {
                    Button(action: {}, label: {
                        Image(systemName: "location.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                            .foregroundColor(.brandPrimary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "network")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                            .foregroundColor(.brandPrimary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "phone.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                            .foregroundColor(.brandPrimary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "person.crop.circle.fill.badge.xmark")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                            .foregroundColor(.brandPrimary)
                    })
                }
                
                Spacer()
                
                Section {
                    List {
                        
                    }
                } header: {
                    Text("Who is here???")
                }
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        }
            
    }
}

#Preview {
    LocationDetailView()
}
