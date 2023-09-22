//
//  ProfileView.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/18/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var profileBio : String = ""
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.5))
                    .frame(height: 165)
                    .cornerRadius(12)
                
                HStack {
                    AvatarView(size: 70)
                    
                    VStack {
                        Text("Mitch Andrade")
                            .font(.system(size: 35, weight: .medium, design: .serif))
                        
//                        Divider()
//                            .frame(width: 200)
                        
                        Text("iOS Developer")
                            .font(.system(size: 20, weight: .light, design: .serif))
                            
                    }
                }
            }
            .padding(.horizontal)
            
            HStack {
                HStack {
                    
                }
                
                Button {
                    
                } label: {
                    Label("Check Out", systemImage: "mappin.and.ellipse")
                        .foregroundColor(.white)
                        .frame(width: 120, height: 30)
                        .background(Color.red)
                        .cornerRadius(8)
//                    Label("Check Out", image: "mappin.and.ellipse")
                }
            }
            
            TextField("", text: $profileBio)
                .border(Color.black)
                .padding()
            
            Spacer()
        }
        .navigationTitle("Profile")
    }
}

#Preview {
    // Put all other NavigationView on the preview outside the main view
    /// The navigationbuttons and titles will appear when the app is ran
    NavigationView {
        ProfileView()
    }
}
