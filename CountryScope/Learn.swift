//
//  Learn.swift
//  CountryScope
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI
import MapKit

struct Learn: View {
    var body: some View {
        Map {
            // Example markers
            Marker("United States", coordinate: CLLocationCoordinate2D(latitude: 37.0902, longitude: -95.7129))
            
            Marker("Canada", coordinate: CLLocationCoordinate2D(latitude: 56.1304, longitude: -106.3468))
            
            Marker("Mexico", coordinate: CLLocationCoordinate2D(latitude: 23.6345, longitude: -102.5528))
            
            Marker("Argentina", coordinate: CLLocationCoordinate2D(latitude: -38.4161, longitude: -63.616))
            
            Marker("Brazil", coordinate: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253))
            
            Marker("Peru", coordinate: CLLocationCoordinate2D(latitude: -9.1900, longitude: -75.0152))
            
            Marker("Bolivia", coordinate: CLLocationCoordinate2D(latitude: -16.2902, longitude: -63.5887))
            
            Marker("", coordinate: CLLocationCoordinate2D(latitude: 56.1304, longitude: -106.3468))
        
            Marker("", coordinate: CLLocationCoordinate2D(latitude: 56.1304, longitude: -106.3468))
            
            Marker("", coordinate: CLLocationCoordinate2D(latitude: 56.1304, longitude: -106.3468))
            
        }
        .mapControlVisibility(.hidden)
        .mapStyle(.imagery(elevation: .realistic))
    }
}

#Preview {
    Learn()
}
