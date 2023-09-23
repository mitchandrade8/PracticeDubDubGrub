//
//  LocationCell.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/23/23.
//

import SwiftUI

struct LocationCell: View {
    var body: some View {
        
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

#Preview {
    LocationCell()
}
