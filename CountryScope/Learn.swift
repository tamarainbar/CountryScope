//
//  Learn.swift
//  CountryScope
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI
import MapKit

struct Learn: View {
    @State private var scale: CGFloat = 1.2
    var body: some View {
        NavigationStack
        {
            ScrollView([.horizontal, .vertical], showsIndicators: false) {
                Image("world")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFit()
                    .scaleEffect(scale)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { value in
                                scale = value
                                // Big enough to allow scrolling
                            }
                    )
            }
            

        } //end of nav stack
        /* Map {
                
            // Example markers
            Marker("United States", coordinate: CLLocationCoordinate2D(latitude: 37.0902, longitude: -95.7129))
            
            Marker("Canada", coordinate: CLLocationCoordinate2D(latitude: 56.1304, longitude: -106.3468))
            
            Marker("Mexico", coordinate: CLLocationCoordinate2D(latitude: 23.6345, longitude: -102.5528))
            
            Marker("Argentina", coordinate: CLLocationCoordinate2D(latitude: -38.4161, longitude: -63.616))
            
            Marker("Brazil", coordinate: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253))
            
            Marker("Peru", coordinate: CLLocationCoordinate2D(latitude: -9.1900, longitude: -75.0152))
            
            Marker("Bolivia", coordinate: CLLocationCoordinate2D(latitude: -16.2902, longitude: -63.5887))
            
            Marker("Chile", coordinate: CLLocationCoordinate2D(latitude: -35.6751, longitude: -71.5430))
        
            Marker("Columbia", coordinate: CLLocationCoordinate2D(latitude: -4.5709, longitude: -74.2973))
            
            Marker("Ecuador", coordinate: CLLocationCoordinate2D(latitude: -1.8312, longitude: -78.1834))
            
            Marker("Guyana", coordinate: CLLocationCoordinate2D(latitude: -4.8604, longitude: -58.9302))
            
            Marker("Paraguay", coordinate: CLLocationCoordinate2D(latitude: -23.4425, longitude: -58.4438))
            
            Marker("Suriname", coordinate: CLLocationCoordinate2D(latitude: -3.9193, longitude: -56.0278))
            
            Marker("Uruguay", coordinate: CLLocationCoordinate2D(latitude: -32.5228, longitude: -55.7658))
            
            Marker("Venezuela", coordinate: CLLocationCoordinate2D(latitude: -6.4238, longitude: -66.5897))
            
            
        }
        .mapControlVisibility(.hidden)
        .mapStyle(.imagery(elevation: .realistic))
         */
    }
}

#Preview {
    Learn()
}
