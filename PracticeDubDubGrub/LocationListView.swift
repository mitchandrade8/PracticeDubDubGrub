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
                LocationViewPic(image: Image(systemName: "shippingbox.circle"))
            }
            .listStyle(PlainListStyle())
        }
    }
}

#Preview {
    LocationListView()
}

struct LocationViewPic: View {
    typealias Body = <#type#>
    
    var image: Image?
    var locationName: String?
    
}


