//
//  Image02.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/19.
//

import SwiftUI

struct Image02: View {
    var body: some View {
        VStack {
            Image("lotus001")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .border(Color.orange,width: 10)
            
            Image("lotus001")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.5)
            
            Image("lotus001")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Image("lotus001")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(color:.red, radius: 20, x: 20, y: 20)
            
        }
    }
}

struct Image02_Previews: PreviewProvider {
    static var previews: some View {
        Image02()
    }
}
