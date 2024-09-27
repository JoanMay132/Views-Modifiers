//
//  CustomContainers.swift
//  Views&Modifiers
//
//  Created by Joan May on 22/09/24.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let columns: Int
    let rows: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct CustomContainers: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        GridStack(columns: 4, rows: 4) { row, col in
           
                Text("C \(col), R \(row)")
                Image(systemName: "\(row * 4 + col).circle")
            
        }
    }
}

#Preview {
    CustomContainers()
}
