//
//  Guyana.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Guyana: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                    Guyana")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.304, saturation: 0.611, brightness: 0.592))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("GuyanaFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Guyana()
}
