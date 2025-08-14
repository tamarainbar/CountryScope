//
//  Suriname.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Suriname: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                 Suriname")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.382, saturation: 0.433, brightness: 0.42))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("SurinameFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Suriname()
}
