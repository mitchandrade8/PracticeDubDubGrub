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
                
                HStack(spacing: 20) {
                    ZStack {
                        AvatarView(size: 90)
                        
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .offset(y: 32)
                    }
                    .padding(.leading, 12)
                    
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .font(.system(size: 32, weight: .medium, design: .serif))
                        
                        TextField("Last Name", text: $lastName)
                            .font(.system(size: 32, weight: .medium, design: .serif))
                        
                        TextField("Company Name", text: $companyName)
                            .font(.system(size: 20, weight: .regular, design: .serif))
                            
                    }
                    .padding(.trailing, 16)
                }
                .padding()
            }
            .padding(.horizontal)
            
//            HStack {
//                Text("Bio: \(characterRemaining) characters remain")
//                
//                Button {
//                    
//                } label: {
//                    Label("Check Out", systemImage: "mappin.and.ellipse")
//                        .foregroundColor(.white)
//                        .frame(width: 120, height: 30)
//                        .background(Color.red)
//                        .cornerRadius(8)
//                }
//            }
            
            
            
            VStack(alignment: .leading) {
                Text("Bio: 100 Characters Remain")
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .padding()
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary, lineWidth: 1))
            }
            
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
