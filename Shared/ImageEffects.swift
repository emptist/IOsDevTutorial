//
//  ImageEffects.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/19.
//

import SwiftUI

struct ImageEffects: View {
    var body: some View {
        VStack {
            HStack {
                Image("lotus002")
                    .resizable()
                    .brightness(0.4)
                Image("lotus002")
                    .resizable()
                    .colorInvert()
            }.padding()
            
            HStack {
                Image("lotus002")
                    .resizable()
                    //.blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .colorMultiply(.yellow)
                Image("lotus002")
                    .resizable()
                    .blur(radius: CGFloat(2), opaque: true)
                
            }.padding()
            HStack {
                Image("lotus002")
                    .resizable()
                    .contrast(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                Image("lotus002")
                    .resizable()
                    .contrast(-1.5)
            }.padding()
            HStack {
                Image("lotus002")
                    .resizable()
                    .hueRotation(Angle(degrees: 270))
                Image("lotus002")
                    .resizable()
                    //.hueRotation(Angle(degrees: 150))
                    .luminanceToAlpha()
            }.padding()
            HStack {
                Image("lotus002")
                    .resizable()
                    .saturation(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                Image("lotus002")
                    .resizable()
                    .grayscale(0.9)
            }.padding()
//            HStack {
//                Image("lotus002")
//                    .resizable()
//                    .luminanceToAlpha()
//                Image("lotus002")
//                    .resizable()
//                    .luminanceToAlpha()
//            }.padding()
//
        }
    }
}

struct ImageEffects_Previews: PreviewProvider {
    static var previews: some View {
        ImageEffects()
    }
}
