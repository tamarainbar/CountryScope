//
//  ContentView.swift
//  CountryScope
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack {
               ZStack{
                  Color(red: 183/255, green: 232/255, blue: 232/255)
                       .ignoresSafeArea(edges: .all)
                   VStack{
                       VStack(spacing:10){
                           HStack{
                               Text("Country")
                                   .font(.custom(
                                    "American Typewriter",
                                    fixedSize:50))
                                   .fontWeight(.bold)
                                   .foregroundColor(Color.black)
                                   .multilineTextAlignment(.leading)
                                   .padding(.leading)
                              Spacer()
                                   
                           }//end of HStack
                           Text("Kaleidoscope")
                               .font(.custom(
                               "American Typewriter",
                               fixedSize:40))
                               //.font(.largeTitle)
                           
                           
//                               .fontWeight(.bold)
                               .fontWeight(.light)
                               .multilineTextAlignment(.center)
                                                    
                       }//end of VStack 2
                       Image("plane")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .padding(.bottom, 100)
                           .frame(width: 350, height: 350)
                           .padding(.bottom)
                       
                       
                     //       Image(systemName: "globe")
                       //     .imageScale(.large)
                         //   .foregroundStyle(.tint)
                            //   Text("Welcome!")
                        
                      //Add Vstack soon!
                       NavigationLink(destination: Learn())
                        {
                            ZStack{
                                RoundedRectangle(cornerRadius: 9)
                                    .frame(width: 150, height: 60)
                               //     .fill(LinearGradient(
                                  //  colors:[.green, .blue],
                                    //startPoint: .top,
                              //      endPoint: .bottom ))
                                    
                                 
                               
                                Text("Learn")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.green)
                                
                                
                            }//end of ZStack learn
                        }//end of nav 1
                   Spacer()
                        NavigationLink(destination: Quiz()) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 9)
                                    .frame(width: 150, height: 60)
                               
                                Text("Quiz")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.green)
                            }//end of ZStack quiz
                            
                        }//end of nav 2
                        Spacer()
                        
                    } // end of vstack
                

                   
                //.padding()
               }//end of ZStack
            } // end of nav stack
    }
}

#Preview {
    ContentView()
}
