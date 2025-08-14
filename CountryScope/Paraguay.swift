//
//  Paraguay.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Paraguay: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                  Paraguay")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.02, saturation: 0.897, brightness: 0.768))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("ParaguayFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Paraguay()
}
