//
//  ProfileView.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/18/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    var characterRemaining = 120
    
    var body: some View {
        VStack {
            ZStack {
                Color(.secondarySystemBackground)
                    .frame(height: 130)
                    .cornerRadius(12)
                
                HStack {
                    ZStack {
                        AvatarView(size: 90)
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .offset(y: 32)
                    }
                    
                    VStack {
                        TextField("First Name", text: $firstName)
//                        Text("Mitch Andrade")
//                            .font(.system(size: 35, weight: .medium, design: .serif))
//                        
//                        Text("iOS Developer")
//                            .font(.system(size: 20, weight: .light, design: .serif))
                            
                    }
                }
            }
            .padding(.horizontal)
            
            HStack {
                Text("Bio: \(characterRemaining) characters remain")
                
                Button {
                    
                } label: {
                    Label("Check Out", systemImage: "mappin.and.ellipse")
                        .foregroundColor(.white)
                        .frame(width: 120, height: 30)
                        .background(Color.red)
                        .cornerRadius(8)
                }
            }
            
            TextField("", text: $bio)
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
