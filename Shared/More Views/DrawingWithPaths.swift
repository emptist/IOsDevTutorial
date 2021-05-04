//
//  DrawingWithPaths.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/3.
//

import SwiftUI

struct DrawingWithPaths: View {
    var body: some View {
        VStack {
            Path { path in
                path.move(to: CGPoint(x: 30, y: 0))
                path.addLine(to: CGPoint(x: 30, y: 200))
                path.addLine(to: CGPoint(x: 230, y: 200))
                path.addLine(to: CGPoint(x: 230, y: 0))
                
                path.move(to: CGPoint(x: 30, y: 300))
                path.addQuadCurve(to: CGPoint(x: 230, y: 300), control: CGPoint(x: 130, y: 450))
                path.addQuadCurve(to: CGPoint(x: 330, y: 300), control: CGPoint(x: 280, y: 220))
            }
            .stroke(lineWidth: 8)
        }.padding()
    }
}

struct DrawingWithPaths_Previews: PreviewProvider {
    static var previews: some View {
        DrawingWithPaths()
    }
}
