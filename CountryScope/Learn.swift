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
        Map
        {
            
        }
        //.mapStyle(.mutedStandard)
        .mapControlVisibility(.hidden)
        .mapStyle(.imagery(elevation: .realistic))
    }
}



#Preview {
    Learn()
}
