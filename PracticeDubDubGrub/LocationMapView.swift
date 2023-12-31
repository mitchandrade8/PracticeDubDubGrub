//
//  LocationMapView.swift
//  PracticeDubDubGrub
//
//  Created by Mitch Andrade on 9/18/23.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516,
                                                                    longitude: -121.891054),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.1,
                                                                          longitudeDelta: 0.1))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            VStack {
                LogoView()
                    .shadow(radius: 10)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LocationMapView()
}

struct LogoView: View {
    var body: some View {
        Image("ddg-map-logo")
            .resizable()
            .scaledToFit()
            .frame(height: 80)
    }
}
