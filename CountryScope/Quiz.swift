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
    @State private var actOneTime = true
    @State private var secretCountry = ""
    @State private var attempts = 0
    @State private var countryCount = 0
    @State private var points = 0
    @State private var bestScore = 0
    
    @State private var countries: [[String]] = [
        ["Argentina", "Capital:\nBuenos Aires", "Landmark:\nObelisco"],
        ["Bolivia", "Capital:\nLa Paz and Sucre", "Landmark:\nSalar de Uyuni"],
        ["Brazil", "Capital:\nBrasilia", "Landmark:\nChrist the Redeemer"],
        ["Chile", "Capital:\nSantiago", "Landmark:\nTorres del Paine National Park"],
        ["Colombia", "Capital:\nBogotá", "Landmark:\nMonserrate"],
        ["Ecuador", "Capital:\nQuito", "Landmark:\nMitad del Mundo"],
        ["Guyana", "Capital:\nGeorgetown", "Landmark:\n1763 Monument"],
        ["Paraguay", "Capital:\nAsunción", "Landmark:\nNational Pantheon of Heroes"],
        ["Peru", "Capital:\nLima", "Landmark:\nMachu Picchu"],
        ["Suriname", "Capital:\nParamaribo", "Landmark:\nHistoric Inner City of Paramaribo"],
        ["Uruguay", "Capital:\nMontevideo", "Landmark:\nThe Palacio Salvo"],
        ["Venezuela", "Capital:\nCaracas", "Landmark:\nAngel Falls"],
        ["French Guiana", "Capital:\nCayenne", "Landmark:\nSpace Center"],
    ]
    
    /*
     - Argentina, Buenos Aires, Obelisco, 🇦🇷
     - Bolivia, La Paz and Sucre, Salar de Uyuni, 🇧🇴
     - Brazil, Brasilia, Christ the Redeemer, 🇧🇷
     - Chile, Santiago, Torres del Paine National Park, 🇨🇱
     - Colombia, Bogotá, Monserrate, 🇨🇴
     - Ecuador, Quito, Mitad del Mundo, 🇪🇨
     - Guyana, Georgetown, 1763 Monument, 🇬🇾
     - Paraguay, Asunción, National Pantheon of Heroes, 🇵🇾
     - Peru, Lima, Machu Picchu, 🇵🇪
     - Suriname, Paramaribo, Historic Inner City of Paramaribo, 🇸🇷
     - Uruguay, Montevideo, The Palacio Salvo, 🇺🇾
     - Venezuela, Caracas, Angel Falls, 🇻🇪
     - French Guiana, Cayenne, Space Center, 🇬🇫
    */
     
    var body: some View {
        VStack {
            VStack (spacing: 5) {
                ZStack {
                    Text("Quiz")
                        .font(.custom(
                            "American Typewriter",
                            fixedSize:40))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Points: \(points)")
                            HStack {
                                Text("Clues ↘️")
                            }
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("Best: \(bestScore)")
                            Button("Retry") {
                                bestScore = points
                                points = 0
                                oneTime = true
                                actOneTime = true
                                countryCount = 0
                                setUp()
                            }
                            
                            
                        }
                    }
                }
                .onAppear() {
                    setUp()
                }
                
                ZStack {
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal, -100.0)
                    HStack (spacing: 20) {
                        if attempts < countries[0].count + 1{
                            if attempts == 3 {
                                ForEach(0...attempts-1, id: \.self) { i in
                                    if secretCountry == countries[countryCount][i] {
                                        Image("\(secretCountry.lowercased())Flag")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 100)
                                    } else {
                                        Text(countries[countryCount][i])
                                    }
                                }
                            } else {
                                ForEach(0...attempts, id: \.self) { i in
                                    if secretCountry == countries[countryCount][i] {
                                        Image("\(secretCountry.lowercased())Flag")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 100)
                                    } else {
                                        Text(countries[countryCount][i])
                                    }
                                }
                            }
                        } else {
                            ForEach(0...attempts-1, id: \.self) { i in
                                if secretCountry == countries[countryCount][i] {
                                    Image("\(secretCountry.lowercased())Flag")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 100)
                                } else {
                                    Text(countries[countryCount][i])
                                }
                            }
                        }
                    }
                } //ZStack
            } //VStack 5 spacing
            
            
            ZStack {
                Image("South America Map")
                    .resizable()
                    .frame(width: 400.0, height: 500.0)
                ZStack {
                    pinPlacement1(Vspace: 410, Hspace: -45, countryy: "Venezuela")
                    pinPlacement1(Vspace: 380, Hspace: 30, countryy: "Guyana")
                    pinPlacement1(Vspace: 360, Hspace: -80, countryy: "Colombia")
                    pinPlacement1(Vspace: 285, Hspace: -105, countryy: "Ecuador")
                    pinPlacement1(Vspace: 180, Hspace: -85, countryy: "Peru")
                    pinPlacement1(Vspace: 360, Hspace: 70, countryy: "Suriname")
                    pinPlacement1(Vspace: 345, Hspace: 120, countryy: "French Guiana")
                    pinPlacement1(Vspace: 190, Hspace: 133, countryy: "Brazil")
                    pinPlacement1(Vspace: 100, Hspace: -35, countryy: "Bolivia")
                    pinPlacement2(Vspace: -10, Hspace: 40, countryy: "Paraguay")
                    pinPlacement2(Vspace: 140, Hspace: -62, countryy: "Chile")
                    pinPlacement2(Vspace: 140, Hspace: -30, countryy: "Argentina")
                    pinPlacement2(Vspace: 110, Hspace: 70, countryy: "Uruguay")
                }//ZStack
            } //country pins
            
            
            ZStack {
                HStack (spacing: 20) {
                    submitButton()
                    if attempts >= countries[0].count {
                        VStack (spacing: 0){
                            Text("You Lose!")
                                .foregroundColor(Color.red)
                            Text("Correct Country: \(secretCountry)")
                            Button ("Play Again") {
                                if points > bestScore {
                                    bestScore = points
                                }
                                points = 0
                                submitted = false
                                buttonPressed = false
                                oneTime = true
                                actOneTime = true
                                countryCount = 0
                                setUp()
                            }
                        }
                    } else if submitted == true && guess != secretCountry {
                        Text("Incorrect\nGuess Again")
                            .foregroundColor(Color.red)
                    }
                    if guess == secretCountry && submitted == true {
                        if countryCount != countries.count - 1{
                            VStack (spacing: 10){
                                Text("Correct!")
                                    .foregroundColor(Color.green)
                                Button ("Next") {
                                    oneTime = true
                                    submitted = false
                                    buttonPressed = false
                                    countryCount += 1
                                    setUp()
                                }
                            }
                        } else {
                            Text("You Win!")
                                .foregroundColor(Color.green)
                            Button ("Play Again") {
                                if points > bestScore {
                                    bestScore = points
                                }
                                points = 0
                                submitted = false
                                buttonPressed = false
                                oneTime = true
                                actOneTime = true
                                countryCount = 0
                                setUp()
                            }
                        }
                    }
                }
            }
            
        } //VStack
        .padding()
    } //body
    
    
    func pinPlacement1(Vspace: CGFloat, Hspace: CGFloat, countryy: String) -> some View {
        VStack (spacing: Vspace){
            HStack (spacing: Hspace){
                Text("")
                countryButton(country: countryy)
            }
            Text("")
        }
    }
    
    func pinPlacement2(Vspace: CGFloat, Hspace: CGFloat, countryy: String) -> some View {
        VStack (spacing: Vspace){
            Text("")
            HStack (spacing: Hspace){
                Text("")
                countryButton(country: countryy)
            }
        }
    }
    
    func setUp() {
        if oneTime {
            if actOneTime {
                countries = [
                    ["Argentina", "Capital:\nBuenos Aires", "Landmark:\nObelisco"],
                    ["Bolivia", "Capital:\nLa Paz and Sucre", "Landmark:\nSalar de Uyuni"],
                    ["Brazil", "Capital:\nBrasilia", "Landmark:\nChrist the Redeemer"],
                    ["Chile", "Capital:\nSantiago", "Landmark:\nTorres del Paine National Park"],
                    ["Colombia", "Capital:\nBogotá", "Landmark:\nMonserrate"],
                    ["Ecuador", "Capital:\nQuito", "Landmark:\nMitad del Mundo"],
                    ["Guyana", "Capital:\nGeorgetown", "Landmark:\n1763 Monument"],
                    ["Paraguay", "Capital:\nAsunción", "Landmark:\nNational Pantheon of Heroes"],
                    ["Peru", "Capital:\nLima", "Landmark:\nMachu Picchu"],
                    ["Suriname", "Capital:\nParamaribo", "Landmark:\nHistoric Inner City of Paramaribo"],
                    ["Uruguay", "Capital:\nMontevideo", "Landmark:\nThe Palacio Salvo"],
                    ["Venezuela", "Capital:\nCaracas", "Landmark:\nAngel Falls"],
                    ["French Guiana", "Capital:\nCayenne", "Landmark:\nSpace Center"],
                ]
                countries = countries.shuffled()
                actOneTime = false
            }
            secretCountry = countries[countryCount][0]
            countries[countryCount] = countries[countryCount].shuffled()
            attempts = 0
            oneTime = false
        }
    }
    
    func countryButton(country: String) -> some View {
        Button {
            buttonPressed = true
            submitted = false
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
            if buttonPressed {
                Text(guess)
                Button {
                    submitted = true
                    buttonPressed = false
                    if(guess != secretCountry) {
                        attempts += 1
                    } else {
                        points += 500 - attempts * 100
                    }
                } label: {
                    Text("Submit")
                        .frame(width: 100.0, height: 25.0)
                        .background(Color.green)
                        .tint(Color.white)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(10)
                }
            } else {
                if (guess == secretCountry && submitted == true && countryCount != countries.count) || (attempts >= countries[0].count) {
                    Text(guess)
                } else {
                    Text("")
                }
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
