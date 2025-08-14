//
//  Peru.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Peru: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                       Peru")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.023, saturation: 0.78, brightness: 0.814))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("PeruFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Peru()
}
