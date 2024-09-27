//
//  ViewComposition.swift
//  Views&Modifiers
//
//  Created by Joan May on 22/09/24.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

// -------------------------------------------------

struct waterMark: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing){
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func waterMarked(with text: String) -> some View {
        modifier(waterMark(text: text))
    }
}
// -------------------------------------------------

struct CapsuleText: View {
    var text: String
    
    var body: some View{
        Text(text)
            .font(.largeTitle)
            .padding()
//            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}
struct ViewComposition: View {
    
    var body: some View {
        
        Color.blue
            .frame(width: 300, height: 200)
            .waterMarked(with: "Hacking with Swift")
        
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack(spacing: 20){
            CapsuleText(text: "Hello, World!")
                .foregroundStyle(.white)
            CapsuleText(text: "Hello, Second!")
                .foregroundStyle(.yellow)
        }
        Text("View Composition (title)")
//            .modifier(Title())
              .titleStyle()
        
    }
}

#Preview {
    ViewComposition()
}
