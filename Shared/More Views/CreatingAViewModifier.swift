//
//  CreatingAViewModifier.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/3.
//

import SwiftUI

struct CreatingAViewModifier: View {
    var body: some View {
        VStack {
            Image("lotus001")
                .myImageStyle()
            Image("lotus002")
                .myImageStyle()
        }
    }
}

struct MyImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 150, height: 150, alignment: .top)
            .cornerRadius(200)
            .saturation(0)
            .brightness(0.1)
    }
    
}

// I add this 
extension View {
    func myImageStyle() -> some View {
        self.modifier(MyImageStyle())
    }
}

struct CreatingAViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        CreatingAViewModifier()
    }
}
