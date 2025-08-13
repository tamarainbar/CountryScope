//
//  Bolivia.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Bolivia: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                     Bolivia")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.023, saturation: 0.522, brightness: 0.652))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("boliviaFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Bolivia()
}
