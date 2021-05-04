//
//  PickerIntoSegmentPicker.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/28.
//

import SwiftUI

struct PickerIntoSegmentPicker: View {
    private var animals = ["🐱 cat", "🐹 dog", "🐨 pig"]
    @State private var selectedAnimalIndex = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedAnimalIndex, label: Text("A Picker ")) {
                ForEach(0..<animals.count) {idx in
                    Text(animals[idx])
                        .tag(idx)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Your Choice: \(animals[selectedAnimalIndex])")
        }
        .padding()
    }
}

struct PickerIntoSegmentPicker_Previews: PreviewProvider {
    static var previews: some View {
        PickerIntoSegmentPicker()
    }
}
