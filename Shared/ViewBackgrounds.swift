//
//  ViewBackgrounds.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/3.
//

import SwiftUI

struct ViewBackgrounds: View {
    
    var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding()
                //.background(Color.orange)
                //.background(Image("lotus001").resizable())
                .background(LinearGradient(gradient: Gradient(colors: [.purple, .green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
    
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding()
                .background(Circle().fill(Color.orange).frame(width: 150, height: 150, alignment: .bottom))
            
        }
    }
}

struct ViewBackgrounds_Previews: PreviewProvider {
    static var previews: some View {
        ViewBackgrounds()
    }
}
