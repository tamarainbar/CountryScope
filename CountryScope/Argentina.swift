//
//  Argentina.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Argentina: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                  Argentina")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.581, saturation: 0.293, brightness: 0.597))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("ArgentinaFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Argentina()
}
