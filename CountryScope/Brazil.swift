//
//  Brazil.swift
//  CountryScope
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct Brazil: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10.0) {
                // Title
                Text("          Brazil")
                    .font(.custom(
                     "American Typewriter",
                     fixedSize:45))                    .foregroundColor(Color(hue: 0.358, saturation: 0.309, brightness: 0.524))
                    .multilineTextAlignment(.leading)
                    .bold()
                
                Image("brazilFlag")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 50)
                    .frame(width: 350, height: 350)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.brazilgreen)
                        .frame(width: 350, height: 110)
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.white)
                        .frame(width: 320, height: 80)
                    VStack{//VStack 1
                        HStack{//HStack 1
                            Text("Capital:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Brasília")}
                        HStack{
                            Text("Currency:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Brazilian Real (BRL)")
                        }
                        HStack{
                            Text("Language:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Portuguese")
                        }
                        
                    }//end of VStack 1
                    .font(.custom(
                     "Times New Roman",
                     fixedSize:20))
                }//end of ZStack

                .padding(.bottom)
                Text("Popular Landmarks")
                
                
                ZStack{//ZStack 1
                  RoundedRectangle(cornerRadius: 9)
                        .fill(Color.brazilgreen)
                        .frame(width: 150, height: 150)
                    
                    
                    
                    
                    
                }//end of ZStack 1
                
                
                
            }
        }
            }
            
            
            
            
            
        }
    
    
#Preview {
    Brazil()
}
