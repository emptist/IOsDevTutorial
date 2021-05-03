//
//  AMirrorView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/3.
//

import SwiftUI

struct AMirrorView: View {
    //let view = Text("lotus002").font(.largeTitle)
    let view = Image("lotus002")
    
    // Is there any way to calc this programmatically?
    let anOffset: CGFloat = 180
    
    var body: some View {
        ZStack {
            view
            
            view
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 1.0, y: 0.0, z: 0.0)
                )
                .rotationEffect(.degrees(180), anchor: .center)
                .offset(x: anOffset, y: 0)
        }
        .offset(x: -anOffset/2, y: 0)
    }
}

struct AMirrorView_Previews: PreviewProvider {
    static var previews: some View {
        AMirrorView()
    }
}
