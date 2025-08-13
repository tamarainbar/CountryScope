//
//  Brazil.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Brazil: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                     Brazil")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.358, saturation: 0.309, brightness: 0.524))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("brazilFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Brazil()
}
