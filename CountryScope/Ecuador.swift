//
//  Ecuador.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Ecuador: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: -18.0) {
                Text("        Ecuador")
                    .font(.custom(
                        "American Typewriter",
                        fixedSize:45))          .foregroundColor(Color(hue: 0.143, saturation: 0.925, brightness: 0.789))
                    .multilineTextAlignment(.leading)
                    .bold()
                Image("ecuadorFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //  .padding(.bottom, 50)
                    .frame(width: 350, height: 310)
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.ecuadorYellow)
                        .frame(width: 350, height: 180)
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.white)
                        .frame(width: 320, height: 150)
                    VStack{//VStack 1
                        HStack{//HStack 1
                            Text("Capital:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Quito")}
                        HStack{
                            Text("Currency:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Dollars (USD)")
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
                            Text("Mitad del Mundo")
                        }
                        HStack{
                            Text("National Flower:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Chuquiraga")
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
            Text("Encebollado")
            ZStack{//ZStack 1
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.ecuadorYellow)
                    .frame(width: 330, height: 230)
                Image("ecuadorDish")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 310, height: 260)
                
            }//end of scroll
        }
    }
}
    #Preview {
        Ecuador()
    }
