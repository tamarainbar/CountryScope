//
//  ContentView.swift
//  CountryScope
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showPopup = false
    var body: some View {
            NavigationStack {
               ZStack{
                  Color(red: 221/255, green: 239/255, blue: 240/255)
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
                               .fontWeight(.light)
                               .multilineTextAlignment(.trailing)
                           
                           
                           
                       }//end of VStack 2
                       Image("plane")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .padding(.bottom, 100)
                           .frame(width: 350, height: 350)
                       //    .padding(.bottom)
                       
                       
                       Text("Welcome! Choose a mode!")
                           .font(.headline)
                           .foregroundColor(Color.black)
                       //Add Vstack soon!
                       NavigationLink(destination: Learn())
                       {
                           ZStack{
                               RoundedRectangle(cornerRadius: 9)
                                   .fill(Color.blue1)
                                   .frame(width: 250, height: 80)
                               HStack
                               {
                                   Text("Learn")
                                       .font(.title)
                                       .fontWeight(.semibold)
                                       .foregroundColor(Color.white)
                                   ZStack
                                   {
                                    //   ZStack
                                    //   {
                                           Button("?") {
                                               showPopup.toggle()
                                           }
                                           .padding()
                                           .background(Color.blue)
                                           .foregroundColor(.white)
                                           .cornerRadius(10)
                            //           } //vstack
                                       if showPopup {
                                           //   Color.black.opacity(0.4)
                                           //   .edgesIgnoringSafeArea(.all)
                                           VStack(spacing: 20) {
                                               Text("This is a custom popup view.")
                                              // Button("Close") {
                                              //     showPopup = false
                                             //  }
                                           }
                                           .padding()
                                           .background(Color.white)
                                           .cornerRadius(10)
                                           .shadow(radius: 10)
                                           .frame(maxWidth: 300)
                                           // Position popup over the button (adjust offset as needed)
                                           .offset(x: 0, y: -90)
                                           .zIndex(1)
                                       }// popup
                                   } // zstack
                           } // end of hstack learn
                       }//end of ZStack learn
                   }//end of nav 1
                   Spacer()
                        NavigationLink(destination: Quiz()) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 9)
                                    .fill(Color.blue1)
                                    .frame(width: 250, height: 80)
                                Text("Quiz")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
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
