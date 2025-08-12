//
//  Quiz.swift
//  CountryScope
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct Quiz: View {
    @State var guess = ""
    var body: some View {
        VStack (spacing: 50) {
            Text("Quiz")
                .font(.title)
            VStack (spacing: 10){
                HStack {
                    Button {
                        guess = "USA"
                    } label: {
                        Text("USA")
                    }
                    Button {
                        guess = "Canada"
                    } label: {
                        Text("Canada")
                    }
                }
                HStack {
                    Button {
                        guess = "France"
                    } label: {
                        Text("France")
                    }
                    Button {
                        guess = "Italy"
                    } label: {
                        Text("Italy")
                    }
                }
                HStack {
                    Button {
                        guess = "Mexico"
                    } label: {
                        Text("Mexico")
                    }
                    Button {
                        guess = "Germany"
                    } label: {
                        Text("Germany")
                    }
                }
            } //VStack
            
            
            VStack (spacing: 10){
                Text(guess)
                Button {
                    
                } label: {
                    if(guess.count > 0) {
                        Text("Submit")
                            .frame(width: 100.0, height: 20.0)
                            .background(Color.green)
                            .tint(Color.white)
                            .buttonStyle(.borderedProminent)
                            .cornerRadius(10)
                    } else {
                        Text("Submit")
                            .frame(width: 100.0, height: 20.0)
                            .background(Color.gray)
                            .tint(Color.white)
                            .buttonStyle(.borderedProminent)
                            .cornerRadius(10)
                            
                    }
                }
            } //VStack
        } //VStack
        
        
    }
    
    
}



#Preview {
    Quiz()
}
