//
//  Chile.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Chile: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: -18.0) {
                Text("           Chile")
                    .font(.custom(
                        "American Typewriter",
                        fixedSize:45))          .foregroundColor(Color("blue1"))
                    .multilineTextAlignment(.leading)
                    .bold()
                Image("chileFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //  .padding(.bottom, 50)
                    .frame(width: 350, height: 310)
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.blue1)
                        .frame(width: 355, height: 180)
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.white)
                        .frame(width: 330, height: 150)
                    VStack{//VStack 1
                        HStack{//HStack 1
                            Text("Capital:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Santiago")}
                        HStack{
                            Text("Currency:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Chilean Peso")
                        }
                        HStack{
                            Text("Language:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Spanish")
                        }
                        HStack{
                            Text("National Dish:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Cazuela")
                        }
                        HStack{
                            Text("National Animal:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Huemul (Deer)")
                        }
                        HStack{
                            Text("National Flower:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Copihue (Bellflower)")
                        }
                    }//end of VStack 1
                    .font(.custom(
                        "Times New Roman",
                        fixedSize:20))
                }//end of ZStack
                .padding(.bottom)
            }
            Text("Popular Landmark")
                .font(.custom(
                    "Futura",
                    fixedSize:25))
            Text("Torres del Paine National Park")
            ZStack{//ZStack 1
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.blue1)
                    .frame(width: 330, height: 200)
                Image("chileLandmark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 290)

            }//end of scroll
        }
    }
}
    #Preview {
        Chile()
    }
