//
//  Venezuela.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Venezuela: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                 Venezuela")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.145, saturation: 0.874, brightness: 0.842))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("VenezuelaFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Venezuela()
}
