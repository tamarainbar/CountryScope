//
//  Peru.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Peru: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: -18.0) {
                Text("           Peru")
                    .font(.custom(
                        "American Typewriter",
                        fixedSize:45))          .foregroundColor(Color(red: 0.047, green: 0.641, blue: 0.324))
                    .multilineTextAlignment(.leading)
                    .bold()
                Image("peruFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //  .padding(.bottom, 50)
                    .frame(width: 350, height: 310)
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.peruRed)
                        .frame(width: 350, height: 180)
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.white)
                        .frame(width: 320, height: 150)
                    VStack{//VStack 1
                        HStack{//HStack 1
                            Text("Capital:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Lima")}
                        HStack{
                            Text("Currency:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Sol")
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
                            Text("Machu Picchu")
                        }
                        HStack{
                            Text("National Animal:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Vicuña")
                        }
                        HStack{
                            Text("National Dish:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Ceviche")
                        }
                    }//end of VStack 1
                    .font(.custom(
                        "Times New Roman",
                        fixedSize:20))
                }//end of ZStack
                .padding(.bottom)
            }
            Text("National Flower")
                .font(.custom(
                    "Futura",
                    fixedSize:25))
            Text("Flor del Inca (Flower of the Incas)")
            ZStack{//ZStack 1
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.peruRed)
                    .frame(width: 220, height: 320)
                Image("peruFlower")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 290)
                
            }//end of scroll
        }
    }
}
    #Preview {
        Peru()
    }
