//
//  ContentView.swift
//  Views&Modifiers
//
//  Created by Joan May on 22/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText: Bool = true
    var body: some View { // Some view means returning an object that conforms to the view protocol
        
        // Why modifiers orders matter?
        Button("Hello, world"){
            // Do nothing
        }
        .background(Color.black)
        .frame(width: 200, height: 200)
        .background(Color.red)
          
        Text("Hello World")
            .padding()
            .background(Color.red)
            .padding()
            .background(Color.blue)
            .padding()
            .background(Color.green)
            .padding()
            .background(Color.yellow)
        
        // CONDITIONAL MODIFIERS DAY 23
        Button("Hello, Joan"){
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .blue: .red)
        
        // DAY 23 ENVIRONMENT MODIFIERS
        
        VStack{
            Text("Gryffindor")
                .font(.largeTitle)
                
            Text("Hupplepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title)
        .blur(radius: 5)
        
        //Day 23 - Views as properties
    }
}

#Preview {
    ContentView()
}
