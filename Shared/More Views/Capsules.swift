//
//  Capsules.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/3.
//

import SwiftUI

struct Capsules: View {
    var body: some View {
        ZStack {
            RotatableCapsule(color: .green, degree: 30)
            RotatableCapsule(color: .red, degree: 90)
            RotatableCapsule(color: .gray, degree: 150)
            RotatableCapsule(color: .orange, degree: 210)
            RotatableCapsule(color: .purple, degree: 270)
            RotatableCapsule(color: .pink, degree: 330)
        }
    }
}

struct RotatableCapsule: View {
    var color: Color
    var degree: Double
    
    var body: some View {
        Capsule()
            .foregroundColor(color)
            .frame(width: 40, height: 100)
            .offset(x: 0, y: 55.0)
            .rotationEffect(.degrees(degree))
            .opacity(0.6)
    }
}

struct Capsures_Previews: PreviewProvider {
    static var previews: some View {
        Capsules()
    }
}
