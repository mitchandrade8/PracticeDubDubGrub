//
//  LocationDetailView.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/20/23.
//

import SwiftUI

struct LocationDetailView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom)
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 15)
                        .foregroundColor(.secondary)
                    
                    Text("15 Market St Ste 40")
                        .font(.system(size: 12, weight: .thin, design: .serif))
                        .foregroundColor(.secondary)
                    
                }
                .padding(.leading)
                
            }
            .padding(.bottom, 40)
            
            Text("It is Chipotle. Enough said.")
            
           
            
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
                    Image(systemName: "location.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 60)
                })
            }
            
            Spacer()
        }
            
    }
}

#Preview {
    LocationDetailView()
}
