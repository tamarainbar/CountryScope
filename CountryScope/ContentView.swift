//
//  ContentView.swift
//  CountryScope
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showPopup = false
    @State private var showPopupA = false
    var body: some View {
        NavigationStack {
            ZStack{
                Color(red: 221/255, green: 239/255, blue: 240/255)
                    .ignoresSafeArea(edges: .all)
                VStack{
                    HStack
                    {
                        VStack(spacing: 0){
                            HStack{
                                Text("Country")
                                    .font(.custom(
                                        "American Typewriter",
                                        fixedSize:40))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .padding([.top, .leading])
                                    
                                Spacer()
                            }//end of HStack
                            Text("Kaleidoscope")
                                .font(.custom(
                                    "American Typewriter",
                                    fixedSize:40))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.trailing)
                                .padding()
                        }//end of VStack 2
                        Image ("map_pin") //stand in for logo
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 100)
                    } // end of hstack
                    Image("plane")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                       // .padding(.bottom, 100)
                        .frame(width: 350, height: 350)
                    
                    Text("Welcome! Choose a mode!")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
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
                                    Button("?") {
                                        showPopup.toggle()
                                    }
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                } // zstack
                            } // end of hstack learn
                            if showPopup {
                                VStack(spacing: 20) {
                                    Text("In this mode, you will learn about different countries.")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.blue)

                                      }
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                                .frame(maxWidth: 300)
                                .offset(x: 0, y: -90)
                                .zIndex(1)
                            }// popup
                        }//end of ZStack learn
                    }//end of nav 1
                    Spacer()
                    NavigationLink(destination: Quiz()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 9)
                                .fill(Color.blue1)
                                .frame(width: 250, height: 80)
                            HStack
                            {
                                Text("Quiz")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                ZStack
                                {
                                    Button("?") {
                                        showPopupA.toggle()
                                    }
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                } // zstack
                            } // end of hstack quiz
                            if showPopupA {
                                VStack(spacing: 20) {
                                    Text("In this mode, you will be tested on different South American countries")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.blue)
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
                        }//end of ZStack quiz
                    }//end of nav 2
                    Spacer()
                } // end of vstack
            }//end of ZStack
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        } // end of nav stack
    }
}
#Preview {
  ContentView()
}
