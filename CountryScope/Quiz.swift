//
//  Quiz.swift
//  CountryScope
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct Quiz: View {
    @State var guess = ""
    @State var submitted = false
    
    @State var countries: [[String]] = [
        ["France","french", "Paris"],
        ["Italy","italian", "Rome"],
        ["Germany","german", "Berlin"],
        ["United States","english", "Washington DC"],
        ["Canada","french", "Ottawa"]]
    
    
    var body: some View {
        VStack (spacing: 50) {
            Text("Quiz")
                .font(.title)
            
            let countryNum = Int.random(in: 0..<countries.count)
            let factNum = Int.random(in: 1..<countries[countryNum].count)
            
            let secretCountry = countries[countryNum][0]
            let randFact = countries[countryNum][factNum]
            
            Text("\(secretCountry)\n\(randFact)")
            
            
            VStack (spacing: 10){
                HStack {
                    countryButton(country: "United States")
                    countryButton(country: "Canada")
                }
                HStack {
                    countryButton(country: "France")
                    countryButton(country: "Italy")
                }
                HStack {
                    countryButton(country: "Mexico")
                    countryButton(country: "Brazil")
                }
            } //VStack
            
            submitButton()
            
            if submitted == true && guess == secretCountry {
                Text("You Win!")
            } else {
                Text("incorrect")
                //self.guess = ""
            }
            
        } //VStack
    } //body
    
    func countryButton(country: String) -> some View {
        Button {
            guess = country
        } label: {
            VStack (spacing: 0) {
                Image("map_pin")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                Text(country)
            }
        }
    }
    
    
    func submitButton() -> some View {
        VStack (spacing: 10){
            Text(guess)
            if(guess.count > 0) {
                Button {
                    submitted = true;
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
                    submitted = false;
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
