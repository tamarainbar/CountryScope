//
// Quiz.swift
// CountryScope
//
// Created by Scholar on 8/11/25.
//
import SwiftUI
struct Quiz: View {
    @State private var guess = ""
    @State private var buttonPressed = false
    @State private var submitted = false
    @State private var oneTime = true
    @State private var secretCountry = ""
    @State private var countryNum = 0
    @State private var attempts = 0
    
    @State private var countries: [[String]] = [
        ["Argentina", "Buenos Aires", ""],
        ["Bolivia", "La Paz and Sucre", "Kantuta and the Patujú Flower"],
        ["Brazil", "Brasilia", "Ipê-Amarelo Flower"],
        ["Chile", "Santiago", "Chilean Bellflower or Copihue"],
        ["Colombia", "Bogotá", "adf"],
        ["Ecuador", "Quito", "b"],
        ["Guyana", "Georgetown", "c"],
        ["Paraguay", "Asunción", "d"],
        ["Peru", "Lima", "e"],
        ["Suriname", "Paramaribo", "f"],
        ["Uruguay", "Montevideo", "g"],
        ["Venezuela", "Caracas", "h"],
        ["French Guiana", "Cayenne", "i"],
    ]
    
    var body: some View {
        VStack {
            VStack (spacing: 5) {
                Text("Quiz")
                    .font(.custom(
                        "American Typewriter",
                        fixedSize:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                HStack {
                    Text("Clues: (\(secretCountry))")
                    Spacer()
                }
                .padding(.leading)
                ZStack {
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(.gray.opacity(0.2))
                        .cornerRadius(10)
                    HStack (spacing: 20) {
                        ForEach(0...attempts, id: \.self) { i in
                        
                            if secretCountry == countries[countryNum][i] {
                                Image("\(secretCountry)Flag")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 100)
                            } else {
                                Text(countries[countryNum][i])
                            }
                        }
                    }
                }
                .onAppear() {
                    setUp()
                }
            }
            
            
            ZStack {
                Image("South America Map")
                    .resizable()
                    .frame(width: 400.0, height: 500.0)
                ZStack{
                    pinPlacement(Vspace: 410, Hspace: -45, countryy: "Venezuela")
                    pinPlacement(Vspace: 380, Hspace: 30, countryy: "Guyana")
                    pinPlacement(Vspace: 360, Hspace: -80, countryy: "Colombia")
                    pinPlacement(Vspace: 285, Hspace: -100, countryy: "Ecuador")
                    pinPlacement(Vspace: 210, Hspace: -90, countryy: "Peru")
                    pinPlacement(Vspace: 360, Hspace: 70, countryy: "Suriname")
                    pinPlacement(Vspace: 355, Hspace: 110, countryy: "French Guiana")
                    pinPlacement(Vspace: 190, Hspace: 120, countryy: "Brazil")
                    pinPlacement(Vspace: 100, Hspace: -35, countryy: "Bolivia")
                    pinPlacement(Vspace: 10, Hspace: 10, countryy: "Paraguy")
                    pinPlacement(Vspace: -10, Hspace: -55, countryy: "Chile")
                    pinPlacement(Vspace: -49, Hspace: -35, countryy: "Argentina")
                    VStack (spacing: -40){
                        HStack (spacing: 70){
                            Text("")
                            countryButton(country: "Uruguay")
                                .offset(x: -10, y: 40)
                        }
                        Text("")
                    }
                }//end of giant ZStack
            } //ZStack
            ZStack {
                submitButton()
                if submitted == true {
                    if guess == secretCountry {
                        Rectangle()
                            .frame(width: 200.0, height: 80.0)
                            .foregroundStyle(Color.white)
                            .accessibilityLabel("You Win!")
                        Text("You Win!")
                            .font(.title)
                            .foregroundColor(Color.green)
                    } else {
                    }
                }
            }
        } //VStack
    } //body
    
    
    func pinPlacement(Vspace: CGFloat, Hspace: CGFloat, countryy: String) -> some View {
        VStack (spacing: Vspace){
            HStack (spacing: Hspace){
                Text("")
                countryButton(country: countryy)
            }
            Text("")
        }
    }
    
    func setUp() {
        if oneTime {
            countryNum = Int.random(in: 0..<countries.count)
            secretCountry = countries[countryNum][0]
            for i in 0..<5 {
                countries[i] = countries[i].shuffled()
            }
            attempts = 0
            oneTime = false
        }
    }
    
    func countryButton(country: String) -> some View {
        Button {
            buttonPressed = true
            guess = country
        } label: {
            VStack (spacing: 0) {
                Image("map_pin")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }
        }
    }
    
    func submitButton() -> some View {
        VStack (spacing: 10){
            Text(guess)
            if(buttonPressed == true) {
                Button {
                    submitted = true
                    attempts = attempts + 1
                } label: {
                    Text("Submit")
                        .frame(width: 100.0, height: 25.0)
                        .background(Color.green)
                        .tint(Color.white)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(10)
                }
            } else {
                Button {
                } label: {
                    Text("Submit")
                        .frame(width: 100.0, height: 25.0)
                        .background(Color.gray)
                        .tint(Color.white)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(10)
                }
            }
        } //VStack
    }
    
}

#Preview {
 Quiz()
}
