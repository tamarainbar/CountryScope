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
                    Color.mint
                        .ignoresSafeArea(edges: .all)
                    VStack {
                        //  Text("hi")
                        //  .multilineTextAlignment(.leading)
                        Text("Country")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        
                        
                        
                        
                        Text("Kaleidoscope")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                        
                        Spacer()
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
                    .padding()
                }//end of ZStack
            } // end of nav stack
    }
}

#Preview {
    ContentView()
}
