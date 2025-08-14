//
//  Columbia.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Columbia: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                  Colombia")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.149, saturation: 0.664, brightness: 0.933))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("ColombiaFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Columbia()
}
