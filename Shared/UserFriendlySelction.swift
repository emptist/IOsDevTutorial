//
//  UserFriendlySelction.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/25.
//

import SwiftUI

struct UserFriendlySelction: View {
    private var fruits = ["Apple","Orange","Banana","Pear"]
    private var colors: Array<Color> = [.blue,.red,.gray,.green,.orange]
    @State private var selectedIndex = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedIndex, label: Text("Fruits")) {
                ForEach(0..<fruits.count) {
                    Text(fruits[$0])
                        .tag($0)
                        .foregroundColor(colors[$0])
                }
            }
            
            Text("You selected: ") +
            Text(fruits[selectedIndex])
                .foregroundColor(colors[selectedIndex])
        }
    }
}

struct UserFriendlySelction_Previews: PreviewProvider {
    static var previews: some View {
        UserFriendlySelction()
    }
}
