//
//  StepperView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/29.
//

import SwiftUI

struct StepperView: View {
    @State var temperature: Double = 0
    var body: some View {
        VStack {
            // 1
            Stepper("stepper: \(Int(temperature))",value:$temperature)
            // 2
            Stepper(
                onIncrement: {
                    temperature += 1
                },
                onDecrement: {
                    temperature -= 1
                },
                label: {
                    Text("temperature: \(Int(temperature))")
                }
            )
            
            Text("the temperature is \(temperature)")
        }.padding()
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
