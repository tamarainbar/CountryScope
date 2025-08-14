//
//  Argentina.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Argentina: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: -18.0) {
                Text("      Argentina")
                    .font(.custom(
                        "American Typewriter",
                        fixedSize:45))          .foregroundColor(Color(hue: 0.53, saturation: 0.526, brightness: 0.928))
                    .multilineTextAlignment(.leading)
                    .bold()
                Image("argentinaFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //  .padding(.bottom, 50)
                    .frame(width: 350, height: 310)
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.argentinaBlue)
                        .frame(width: 350, height: 180)
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.white)
                        .frame(width: 320, height: 150)
                    VStack{//VStack 1
                        HStack{//HStack 1
                            Text("Capital:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Buenos Aires")}
                        HStack{
                            Text("Currency:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Argentine Peso")
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
                            Text("Obelisco")
                        }
                        HStack{
                            Text("National Flower:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Ceibo")
                        }
                        HStack{
                            Text("National Dish:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Asado(BBQ)")
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
            Text("Red Ovenbird")
            ZStack{//ZStack 1
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.argentinaBlue)
                    .frame(width: 330, height: 260)
                Image("argentinaBird")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 290)
                
            }//end of scroll
        }
    }
}
    #Preview {
        Argentina()
    }

