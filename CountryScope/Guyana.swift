//
//  Guyana.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Guyana: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading , spacing: -18.0) {
                // Title
                Text("        Guyana")
                    .font(.custom(
                        "American Typewriter",
                        fixedSize:45))          .foregroundColor(Color("guyanaGreen"))
                    .multilineTextAlignment(.leading)
                    .bold()
                Image("GuyanaFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 310)
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.guyanaGreen)
                        .frame(width: 350, height: 180)
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.white)
                        .frame(width: 320, height: 150)
                    VStack{//VStack 1
                        HStack{//HStack 1
                            Text("Capital:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Georgetown")}
                        HStack{
                            Text("Currency:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Guyanese Dollar")
                        }
                        HStack{
                            Text("Language:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("English")
                        }
                        HStack{
                            Text("Popular Landmark:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("1763 Monument")
                        }
                        HStack{
                            Text("National Flower:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Giant water lily")
                        }
                        HStack{
                            Text("National Dish:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Pepperpot")
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
            Text("Jaguar")
            ZStack{//ZStack 1
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.guyanaGreen)
                    .frame(width: 330, height: 230)
                Image("guyanaJaguar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 290)
                
            }//end of scroll
        }
    }
}
#Preview {
    Guyana()
}
