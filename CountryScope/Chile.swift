//
//  Chile.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Chile: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Title
                Text("                       Chile")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.626, saturation: 0.664, brightness: 0.522))
                    .multilineTextAlignment(.center)
                    .bold()
                Image("ChileFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    }
#Preview {
    Chile()
}
