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
                    
                    
                    // Brazil
                    NavigationLink(destination: CountryDetailView(countryName: "Brazil")) {
                        Text("🇧🇷")
                            .font(.title)
                            .padding(8)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -350, y: 120)
                    
                    // Argentina
                    NavigationLink(destination: CountryDetailView(countryName: "Argentina")) {
                        Text("🇦🇷")
                            .font(.title)
                            .padding(8)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -390, y: 250)
                    
                    // Colombia
                    NavigationLink(destination: CountryDetailView(countryName: "Colombia")) {
                        Text("🇨🇴")
                            .font(.title)
                            .padding(2)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -455, y: 40)
                    
                    // Peru
                    NavigationLink(destination: CountryDetailView(countryName: "Peru")) {
                        Text("🇵🇪")
                            .font(.title2)
                            .padding(3)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -465, y: 110)
                    
                    // Chile
                    NavigationLink(destination: CountryDetailView(countryName: "Chile")) {
                        Text("🇨🇱")
                            .font(.title3)
                            .padding(1)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -430, y: 200)
                    
                    // Ecuador
                    NavigationLink(destination: CountryDetailView(countryName: "Ecuador")) {
                        Text("🇪🇨")
                            .font(.title3)
                            .padding(2)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -490, y: 72)
                    
                    // Bolivia
                    NavigationLink(destination: CountryDetailView(countryName: "Bolivia")) {
                        Text("🇧🇴")
                            .font(.title2)
                            .padding(6)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -410, y: 150)
                    
                    // Guyana
                    NavigationLink(destination: CountryDetailView(countryName: "Guyana")) {
                        Text("🇬🇾")
                            .font(.title3)
                            .padding(1)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -385, y: 2)
                    
                    // Paraguay
                    NavigationLink(destination: CountryDetailView(countryName: "Paraguay")) {
                        Text("🇵🇾")
                            .font(.title3)
                            .padding(1)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -376, y: 185)
                    
                    // Suriname
                    NavigationLink(destination: CountryDetailView(countryName: "Suriname")) {
                        Text("🇸🇷")
                            .font(.title3)
                            .padding(1)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -365, y: -1)
                    
                    // Uruguay
                    NavigationLink(destination: CountryDetailView(countryName: "Uruguay")) {
                        Text("🇺🇾")
                            .font(.title3)
                            .padding(1)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -355, y: 240)
                    
                    // Venezuela
                    NavigationLink(destination: CountryDetailView(countryName: "Venezuela")) {
                        Text("🇻🇪")
                            .font(.title3)
                            .padding(1)
                            .background(Circle().fill(Color.white))
                    }
                    .offset(x: -417, y: 24)
                    
                    
                    
                    
                    
                    
                    
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

