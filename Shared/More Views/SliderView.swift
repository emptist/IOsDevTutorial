//
//  SliderView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/29.
//

import SwiftUI

struct SliderView: View {
    @State var temperature = 0.0
    
    var body: some View {
        VStack {
            Slider(value: $temperature)
            Slider(value: $temperature, in: -40...40) { item in
                print(item)
            }
            HStack{
                Image(systemName: "sun.max")
                
                Slider(value: $temperature,in: -40...40, step: 2) { item in print(item) }.accentColor(.pink).colorInvert()
                
                Image(systemName: "sun.max.fill")
                
            }
            Text("The temperature is \(temperature)")
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
