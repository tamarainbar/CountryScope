//
//  Venezuela.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Venezuela: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: -18.0) {
                Text("      Venezuela")
                    .font(.custom(
                        "American Typewriter",
                        fixedSize:45))          .foregroundColor(Color("venezuelaRed"))
                    .multilineTextAlignment(.leading)
                    .bold()
                Image("VenezuelaFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //  .padding(.bottom, 50)
                    .frame(width: 350, height: 310)
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.venezuelaRed)
                        .frame(width: 350, height: 180)
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.white)
                        .frame(width: 320, height: 150)
                    VStack{//VStack 1
                        HStack{//HStack 1
                            Text("Capital:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Caracas")}
                        HStack{
                            Text("Currency:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Venezuelan Bolívar")
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
                            Text("Angel Falls")
                        }
                        HStack{
                            Text("National Flower:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Orchid Cattleya mossiae")
                        }
                        HStack{
                            Text("National Dish:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Pabellón Criollo")
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
            Text("Venezuelan Troupial")
            ZStack{//ZStack 1
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.venezuelaRed)
                    .frame(width: 330, height: 260)
                Image("venezuelaBird")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 290)
                
            }//end of scroll
        }
    }
}
#Preview {
    Venezuela()
}
