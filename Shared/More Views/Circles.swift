//
//  Circles.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/3.
//

import SwiftUI

struct Circles: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.orange)
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            ZStack {
                Circle()
                    .fill(Color.green)
                Circle()
                    .fill(Color.red).scaleEffect(0.8)
                Circle()
                    .fill(Color.orange).scaleEffect(0.6)
            }
            RoundedRectangle(cornerRadius: 60, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .stroke(lineWidth: 10)
                .fill(Color.red)
                .padding()
        }
    }
}

struct Circles_Previews: PreviewProvider {
    static var previews: some View {
        Circles()
    }
}
