//
//  LocationDetailView.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/20/23.
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns = [GridItem(.flexible()), 
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
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
                    }
                    .padding()
                    
                }
                .padding(.bottom, 40)
                
                Text("It is Chipotle. Enough said.")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .padding(.horizontal)
                
                ZStack {
                    Capsule()
                        .frame(height: 75)
                        .foregroundColor(Color(.secondarySystemBackground))
                    
                    HStack(spacing: 20) {
                        Button {
                            
                        } label: {
                            LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                        }
                        
                        Button {
                            
                        } label: {
                            LocationActionButton(color: .brandPrimary, imageName: "network")
                        }
                        
                        Button {
                            
                        } label: {
                            LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                        }
                        
                        Button {
                            
                        } label: {
                            LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                        }
                    }
                }
                
                Text("Whos here?")
                    .bold()
                    .font(.title2)
                
                LazyVGrid(columns: columns, content: {
                    FirstNameAvatarView(firstName: "User")
                    FirstNameAvatarView(firstName: "User")
                    FirstNameAvatarView(firstName: "User")
                    FirstNameAvatarView(firstName: "User")
                    FirstNameAvatarView(firstName: "User")
                    FirstNameAvatarView(firstName: "User")
                    FirstNameAvatarView(firstName: "User")
                })
                Spacer()
                
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LocationDetailView()
}

struct LocationActionButton: View {
    
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
        }
    }
}

struct FirstNameAvatarView: View {
    
    var firstName: String
    
    var body: some View {
        VStack {
            AvatarView(size: 70)
            
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}
