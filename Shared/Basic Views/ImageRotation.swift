//
//  ImageRotation.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/19.
//

import SwiftUI

struct ImageRotation: View {
    var body: some View {
        VStack {
            HStack {
                Image("lotus002")
                    .resizable()
                    .scaleEffect(x:0.95,y:0.2,anchor: UnitPoint.center)
                    .rotationEffect(Angle(degrees: 9))
                //.brightness(0.4)
                Image("lotus002")
                    .resizable()
                    .scaleEffect(CGSize(width: 1.1, height: 0.3))
                    .rotationEffect(Angle(degrees: 27), anchor: UnitPoint.init(x:1.2,y:0.2))
                //.colorInvert()
            }.padding()
            Image("lotus002")
                .resizable()
                .rotation3DEffect(Angle(degrees: 27), axis: (x: CGFloat(2), y: CGFloat(0), z: CGFloat(1)))
            //.colorInvert()
        
        }
    }
}

struct ImageRotation_Previews: PreviewProvider {
    static var previews: some View {
        ImageRotation()
    }
}
