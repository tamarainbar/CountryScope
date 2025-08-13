//
//  Learn.swift
//  CountryScope
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct Learn: View {
    @State private var scale: CGFloat = 1.2
    
    var body: some View {
        NavigationStack {
            ScrollView([.horizontal, .vertical], showsIndicators: false) {
                ZStack {
                    Image("world")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(scale)
                    
                    // South American country buttons
                    // Brazil
                    NavigationLink(destination: CountryDetailView(countryName: "Brazil")) {
                        Text("🇧🇷")
                            .font(.title)
                            .padding(8)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -350, y: 100) //
                    
                    // Argentina
                    NavigationLink(destination: CountryDetailView(countryName: "Argentina")) {
                        Text("🇦🇷")
                            .font(.title)
                            .padding(8)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: 30, y: 200)
                    
                    // Colombia
                    NavigationLink(destination: CountryDetailView(countryName: "Colombia")) {
                        Text("🇨🇴")
                            .font(.title)
                            .padding(8)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -20, y: 50)
                    
                    // Peru
                    NavigationLink(destination: CountryDetailView(countryName: "Peru")) {
                        Text("🇵🇪")
                            .font(.title)
                            .padding(8)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -30, y: 80)
                    
                    // Chile
                    NavigationLink(destination: CountryDetailView(countryName: "Chile")) {
                        Text("🇨🇱")
                            .font(.title)
                            .padding(8)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: 10, y: 180)
                    
                }
                .scaleEffect(scale)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            scale = value
                        }
                )
            }
        }
    }
}

struct CountryDetailView: View {
    let countryName: String
    
    var body: some View {
        Text(countryName)
            .font(.largeTitle)
    }
}

#Preview {
    Learn()
}
