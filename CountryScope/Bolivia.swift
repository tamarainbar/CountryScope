//
//  Bolivia.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Bolivia: View {
    var body: some View {
        ScrollView {
          VStack(alignment: .leading, spacing: -20.0) {
          Text("        Bolivia")
              .font(.custom(
               "American Typewriter",
               fixedSize:45))          .foregroundColor(Color(hue: 0.013, saturation: 0.621, brightness: 0.78))
              .multilineTextAlignment(.leading)
              .bold()
            Image("boliviaFlag")
              .resizable()
              .aspectRatio(contentMode: .fit)
            //  .padding(.bottom, 50)
              .frame(width: 350, height: 310)
            ZStack{
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.boliviaRed)
                    .frame(width: 360, height: 180)
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.white)
                    .frame(width: 330, height: 150)
              VStack{//VStack 1
                HStack{//HStack 1
                  Text("Capital:")
                    .font(.headline)
                    .fontWeight(.bold)
                  Text("Sucre and La paz")}
                HStack{
                  Text("Currency:")
                    .font(.headline)
                    .fontWeight(.bold)
                  Text("Bolivian Boliviano")
                }
                HStack{
                  Text("Language:")
                    .font(.headline)
                    .fontWeight(.bold)
                  Text("Spanish")
                }
                  HStack{
                    Text("Popular landmark:")
                      .font(.headline)
                      .fontWeight(.bold)
                    Text("Salar de Uyuni")
                  }
                  HStack{
                    Text("National Dish:")
                      .font(.headline)
                      .fontWeight(.bold)
                    Text("Feijoada")
                  }
                  HStack{
                    Text("National Flower:")
                      .font(.headline)
                      .fontWeight(.bold)
                    Text("Kantuta and the Patujú")
                  }
                 
              }//end of VStack 1
              .font(.custom(
                  "Times New Roman",
                  fixedSize:20))
          }//end of ZStack
          .padding(.bottom)
      }
      Text("National Animal")
                .font(.custom(
                    "Futura",
              fixedSize:25))
      Text("Bandeja Paisa")
      ZStack{//ZStack 1
          RoundedRectangle(cornerRadius: 9)
              .fill(Color.boliviaRed)
              .frame(width: 250, height: 160)
          Image("boliviaLlama")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 230, height: 210)
          
      }//end of scroll
  }
}
}
#Preview {
  Bolivia()
}

