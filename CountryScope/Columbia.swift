//
//  Columbia.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI
struct Columbia: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: -18.0) {
                Text("      Colombia")
                    .font(.custom(
                        "American Typewriter",
                        fixedSize:45))          .foregroundColor(Color(hue: 0.063, saturation: 0.819, brightness: 0.96))
                    .multilineTextAlignment(.leading)
                    .bold()
                Image("ColombiaFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //  .padding(.bottom, 50)
                    .frame(width: 350, height: 310)
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.colombiaOrange)
                        .frame(width: 350, height: 180)
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.white)
                        .frame(width: 320, height: 150)
                    VStack{//VStack 1
                        HStack{//HStack 1
                            Text("Capital:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Bogotá")}
                        HStack{
                            Text("Currency:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Colombian Peso")
                        }
                        HStack{
                            Text("Language:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Spanish")
                        }
                        HStack{
                            Text("Popular Landmark:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Monserrate")
                        }
                        HStack{
                            Text("National Flower:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Cattleya trianae")
                        }
                        HStack{
                            Text("National Animal:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Andean Condor")
                        }
                    }//end of VStack 1
                    .font(.custom(
                        "Times New Roman",
                        fixedSize:20))
                }//end of ZStack
                .padding(.bottom)
            }
            Text("National Dish")
                .font(.custom(
                    "Futura",
                    fixedSize:25))
            Text("Bandeja Paisa")
            ZStack{//ZStack 1
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.colombiaOrange)
                    .frame(width: 230, height: 230)
                Image("colombiaDish")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 190, height: 190)
                
            }//end of scroll
        }
    }
}
    #Preview {
        Columbia()
    }

