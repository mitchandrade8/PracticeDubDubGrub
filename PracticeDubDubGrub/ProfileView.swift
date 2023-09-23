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
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Bio: ")
                    .font(.callout)
                    .foregroundColor(.secondary)
                +
                Text("\(100 - bio.count) ")
                    .bold()
                    .font(.callout)
                    /// ternary operator using the "bio.count" to display green or pink on remaining characters
                    .foregroundColor(bio.count <= 100 ? .brandPrimary : Color.pink)
                +
                Text("Characters Remain")
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary, lineWidth: 1))
            }
            .padding(.horizontal, 16)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Create Profile")
                    .bold()
                    .frame(width: 280, height: 44)
                    .background(Color.brandPrimary)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
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
