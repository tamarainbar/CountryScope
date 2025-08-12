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
            VStack {
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
                
                
            } // end of vstack
            .padding()
        } // end of nav stack
    }
}

#Preview {
    ContentView()
}
