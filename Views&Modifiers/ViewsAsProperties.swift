//
//  ViewsAsProperties.swift
//  Views&Modifiers
//
//  Created by Joan May on 22/09/24.
//

import SwiftUI

struct ViewsAsProperties: View {
    
    @ViewBuilder var spells: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        spells
    }
}

#Preview {
    ViewsAsProperties()
}
