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
        ["Argentina", "Capital:\nBuenos Aires", "Nature:\nPerito Moreno Glacier"],
        ["Bolivia", "Capital:\nLa Paz and Sucre", "Nature:\nSalar de Uyuni"],
        ["Brazil", "Capital:\nBrasilia", "Nature:\nAmazon Rainforest and River"],
        ["Chile", "Capital:\nSantiago", "Nature:\nAtacama Desert"],
        ["Colombia", "Capital:\nBogotá", "Nature:\nCaño Cristales"],
        ["Ecuador", "Capital:\nQuito", "Nature:\nGalápagos Islands"],
        ["Guyana", "Capital:\nGeorgetown", "Nature:\nKaieteur Falls"],
        ["Paraguay", "Capital:\nAsunción", "Nature:\nCerro Tres Kandú"],
        ["Peru", "Capital:\nLima", "Nature:\nAndes Mountains"],
        ["Suriname", "Capital:\nParamaribo", "Nature:\nVoltzberg Granite Dome"],
        ["Uruguay", "Capital:\nMontevideo", "Nature:\nCerro Catedral"],
        ["Venezuela", "Capital:\nCaracas", "Nature:\nAuyán-Tepui"],
        ["French Guiana", "Capital:\nCayenne", "Nature:\nAmazonian Park"],
    ]
    
    var body: some View {
        VStack {
            VStack (spacing: 5) {
                HStack {
                    VStack {
                        Button("Retry") {
                            bestScore = points
                            oneTime = true
                            actOneTime = true
                            countryCount += 1
                            setUp()
                        }
                        HStack {
                            Text("Clues:")
                        }
                    }
                    Spacer()
                    
                    Text("Quiz")
                        .font(.custom(
                            "American Typewriter",
                            fixedSize:40))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    VStack {
                        Text("Points: \(points)")
                        Text("Best Score: \(bestScore)")
                            .padding(.trailing)
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
                    HStack (spacing: 20) {
                        if attempts < countries[0].count {
                            ForEach(0...attempts, id: \.self) { i in
                                if secretCountry == countries[countryCount][i] {
                                    Image("\(secretCountry)Flag")
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
                }//ZStack
            } //end of giant ZStack
            
            
            ZStack {
                HStack (spacing: 20) {
                    submitButton()
                    if attempts >= countries[0].count {
                        VStack (spacing: 10){
                            Text("Nope!")
                            Button ("Next") {
                                oneTime = true
                                countryCount += 1
                                setUp()
                            }
                        }
                    }
                    if guess == secretCountry && submitted == true {
                        if countryCount != 12 {
                            VStack (spacing: 10){
                                Text("Yes!")
                                Button ("Next") {
                                    oneTime = true
                                    countryCount += 1
                                    setUp()
                                }
                            }
                        } else {
                            ZStack {
                                Rectangle()
                                    .frame(width: 200.0, height: 80.0)
                                    .foregroundStyle(Color.white)
                                    .accessibilityLabel("You Win!")
                                Text("You Win!")
                                    .font(.title)
                                    .foregroundColor(Color.green)
                            }
                            Button ("Play Again") {
                                bestScore = points
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
            if actOneTime {
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
            Text(guess)
            if(buttonPressed == true) {
                Button {
                    submitted = true
                    buttonPressed = false
                    if(guess != secretCountry) {
                        attempts += 1
                    } else {
                        points += 300 - attempts * 100
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
