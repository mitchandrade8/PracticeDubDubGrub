//
//  AvatarView.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/23/23.
//

import SwiftUI

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

#Preview {
    AvatarView(size: 70)
}
