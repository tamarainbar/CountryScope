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
                                   .font(.largeTitle)
                                   .fontWeight(.bold)
                                   .foregroundColor(Color.black)
                                   .multilineTextAlignment(.leading)
                                   .padding(.leading)
                              Spacer()
                                   
                           }//end of HStack
                           Text("Kaleidoscope")
                               .font(.largeTitle)
                               .fontWeight(.bold)
                               .multilineTextAlignment(.center)
                                                    
                       }//end of VStack 2
                       Image("plane")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .padding(.bottom, 100)
                           .frame(width: 350, height: 350)
                           .padding(.bottom)
                       
                       
                            Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Welcome!")
                        
                        NavigationLink(destination: Learn())
                        {
                            Text("Learn")
                        }
                        
                        NavigationLink(destination: Quiz()) {
                            Text("Quiz")
                            
                        }
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
