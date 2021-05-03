//
//  ComposedText.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/18.
//

import SwiftUI

struct ComposedText: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(.yellow)
            .fontWeight(.bold)
        + Text("world")
            .foregroundColor(.orange)
            .strikethrough()
        + Text("for")
            .foregroundColor(.red)
            .italic()
        + Text("SwiftUI")
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .underline()
        
    }
}

struct ComposedText_Previews: PreviewProvider {
    static var previews: some View {
        ComposedText()
    }
}
