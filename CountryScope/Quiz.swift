

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
  @State private var countries: [[String]] = [
    ["Argentina", "Buenos Aires"],
    ["Bolivia", "La Paz and Sucre"],
    ["Brazil", "Brasilia"],
    ["Chile", "Santiago"],
    ["Colombia", "Bogotá"],
    ["Ecuador", "Quito"],
    ["Guyana", "Georgetown"],
    ["Paraguay", "Asunción"],
    ["Peru", "Lima"],
    ["Suriname", "Paramaribo"],
    ["Uruguay", "Montevideo"],
    ["Venezuela", "Caracas"],
    ["French Guiana", "Cayenne"],
  ]
  var body: some View {
    VStack (spacing: 50) {
      Text("Quiz")
        .font(.custom(
         "American Typewriter",
         fixedSize:40))
        .fontWeight(.bold)
        .foregroundColor(Color.black)
        .multilineTextAlignment(.leading)
      let countryNum = Int.random(in: 0..<countries.count)
      let factNum = Int.random(in: 1..<countries[countryNum].count)
      let secretCountry = countries[countryNum][0]
      let randFact = countries[countryNum][factNum]
      Text("\(secretCountry)\n\(randFact)")
      ZStack {
        Image("South America Map")
          .resizable()
          .scaledToFit()
        //pinPlacement()
        ZStack{
          VStack (spacing: 410){
            HStack (spacing: 70){
              countryButton(country: "Venezuela")
              Text("")
            }
            Text("")
          }
          VStack (spacing: 380){
            HStack (spacing: 30){
              Text("")
              countryButton(country: "Guyana")
            }
            Text("")
          }
          VStack (spacing: 360){
            HStack (spacing: -80){
              Text("")
              countryButton(country: "Colombia")
            }
            Text("")
          }
          VStack (spacing: 285){
            HStack (spacing: -100){
              Text("")
              countryButton(country: "Ecuador")
            }
            Text("")
          }
          VStack (spacing: 210){
            HStack (spacing: -90){
              Text("")
              countryButton(country: "Peru")
            }
            Text("")
          }
          VStack (spacing: 360){
            HStack (spacing: 70){
              Text("")
              countryButton(country: "Suriname")
            }
            Text("")
          }
          VStack (spacing: 355){
            HStack (spacing: 110){
              Text("")
              countryButton(country: "French Guiana")
            }
            Text("")
          }
          VStack (spacing: 190){
            HStack (spacing: 120){
              Text("")
              countryButton(country: "Brazil")
            }
            Text("")
          }
          VStack (spacing: 100){
            HStack (spacing: -35){
              Text("")
              countryButton(country: "Bolivia")
            }
            Text("")
          }
          VStack (spacing: 10){
            HStack (spacing: 10){
              Text("")
              countryButton(country: "Paraguay")
            }
            Text("")
          }
          VStack (spacing: -10){
            HStack (spacing: -55){
              Text("")
              countryButton(country: "Chile")
            }
            Text("")
          }
          VStack (spacing: -49.0){
            HStack (spacing: -35){
              Text("")
              countryButton(country: "Argentina")
            }
            Text("")
          }
          VStack (spacing: -40){
            HStack (spacing: 70){
              Text("")
              countryButton(country: "Uruguay")
                .offset(x: -10, y: 40)
            }
            Text("")
          }
        }//end of giant ZStack
        /*
          HStack {
            countryButton(country: "Ecuador")
            countryButton(country: "Colombia")
            countryButton(country: "Guyana")
            countryButton(country: "Suriname")
            countryButton(country: "French Guiana")
          }
          HStack {
          }
          HStack {
            countryButton(country: "Peru")
            countryButton(country: "Brazil")
          }
          HStack {
            countryButton(country: "Bolivia")
          }
          HStack {
            countryButton(country: "Paraguay")
          }
          HStack {
            countryButton(country: "Chile")
            countryButton(country: "Argentina")
            countryButton(country: "Uruguay")
          }
          */
      }
      ZStack {
        submitButton()
        if submitted == true && guess == secretCountry{
          Rectangle()
            .frame(width: 200.0, height: 80.0)
            .foregroundStyle(Color.white)
            .accessibilityLabel("You Win!")
          Text("You Win!")
            .font(.title)
            .foregroundColor(Color.green)
        }
      }
    } //VStack
  } //body
/*
  func pinPlacement() -> some View {
  }
  */
  func countryButton(country: String) -> some View {
    Button {
      buttonPressed = true
      guess = country
    } label: {
      VStack (spacing: 0) {
        Image("map_pin")
          .resizable()
          .frame(width: 30.0, height: 30.0)
        //Text(country)
      }
    }
  }
  func submitButton() -> some View {
    VStack (spacing: 10){
      Text(guess)
      if(buttonPressed == true) {
        Button {
          submitted = false;
        } label: {
            Text("Submit")
              .frame(width: 100.0, height: 35.0)
              .background(Color.green)
              .tint(Color.white)
              .bold(true)
              .buttonStyle(.borderedProminent)
              .cornerRadius(10)
        }
      } else {
        Button {
          if(buttonPressed == true) {
            submitted = true;
          }
        } label: {
            Text("Submit")
              .frame(width: 100.0, height: 35.0)
              .background(Color.blue1)
              .tint(Color.white)
              .bold(true)
              .buttonStyle(.borderedProminent)
              .cornerRadius(10)
        }
      }
    } //VStack
  }
}
#Preview {
  Quiz()
=======
 @State private var guess = ""
 @State private var buttonPressed = false
 @State private var submitted = false
 @State private var oneTime = true;
 @State private var secretCountry = ""
 @State private var countryNum = 0
 @State private var randFact = ""
 @State private var countries: [[String]] = [
  ["Argentina", "Buenos Aires"],
  ["Bolivia", "La Paz and Sucre"],
  ["Brazil", "Brasilia"],
  ["Chile", "Santiago"],
  ["Colombia", "Bogotá"],
  ["Ecuador", "Quito"],
  ["Guyana", "Georgetown"],
  ["Paraguay", "Asunción"],
  ["Peru", "Lima"],
  ["Suriname", "Paramaribo"],
  ["Uruguay", "Montevideo"],
  ["Venezuela", "Caracas"],
  ["French Guiana", "Cayenne"],
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
      Text("Clues:")
      Spacer()
    }
    .padding(.leading)
   ZStack {
    Rectangle()
     .frame(height: 100)
     .foregroundColor(.gray.opacity(0.2))
     .cornerRadius(10)
    if secretCountry == randFact {
     Image("plane")
      .resizable()
      .scaledToFit()
      .frame(height: 100)
    } else {
     Text(randFact)
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
               VStack (spacing: 420){
                   HStack (spacing: 70){
                       countryButton(country: "Venezuela")
                       Text("")
                   }
                   Text("")
               }
               VStack (spacing: 380){
                   HStack (spacing: 30){
                       Text("")
                       countryButton(country: "Guyana")
                   }
                   Text("")
               }
               VStack (spacing: 370){
                   HStack (spacing: -80){
                       Text("")
                       countryButton(country: "Colombia")
                   }
                   Text("")
               }
               VStack (spacing: 285){
                   HStack (spacing: -105){
                       Text("")
                       countryButton(country: "Ecuador")
                   }
                   Text("")
               }
               VStack (spacing: 210){
                   HStack (spacing: -90){
                       Text("")
                       countryButton(country: "Peru")
                   }
                   Text("")
               }
               VStack (spacing: 360){
                   HStack (spacing: 70){
                       Text("")
                       countryButton(country: "Suriname")
                   }
                   Text("")
               }
               VStack (spacing: 355){
                   HStack (spacing: 115){
                       Text("")
                       countryButton(country: "French Guiana")
                   }
                   Text("")
               }
               VStack (spacing: 190){
                   HStack (spacing: 130){
                       Text("")
                       countryButton(country: "Brazil")
                   }
                   Text("")
               }
               VStack (spacing: 100){
                   HStack (spacing: -35){
                       Text("")
                       countryButton(country: "Bolivia")
                   }
                   Text("")
               }
               VStack (spacing: 10){
                   HStack (spacing: 10){
                       Text("")
                       countryButton(country: "Paraguy")
                   }
                   Text("")
               }
               VStack (spacing: -10){
                   HStack (spacing: -58){
                       Text("")
                       countryButton(country: "Chile")
                   }
                   Text("")
               }
               VStack (spacing: -20){
                   HStack (spacing: -35){
                       Text("")
                       countryButton(country: "Argentina")
                           .offset(x: 5,y: 60)
                   }
                   Text("")
               }
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
         if submitted == true && guess == secretCountry{
           Rectangle()
             .frame(width: 200.0, height: 80.0)
             .foregroundStyle(Color.white)
             .accessibilityLabel("You Win!")
           Text("You Win!")
             .font(.title)
             .foregroundColor(Color.green)
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
 countryNum = Int.random(in: 0..<countries.count)
 let factNum = Int.random(in: 0..<countries[countryNum].count)
 secretCountry = countries[countryNum][0]
 randFact = countries[countryNum][factNum]
 /*
  ForEach(1..<10) { index in
   countries[index] = countries[index].shuffled()
  }
  */
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
    //Text(country)
   }
  }
 }
 func submitButton() -> some View {
  VStack (spacing: 10){
   Text(guess)
   if(buttonPressed == true) {
    Button {
     submitted = false;
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
     if(buttonPressed == true) {
      submitted = true;
     }
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







