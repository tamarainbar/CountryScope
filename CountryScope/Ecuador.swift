//
//  Ecuador.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Ecuador: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                   Ecuador")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.121, saturation: 0.683, brightness: 0.798))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("EcuadorFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Ecuador()
}
