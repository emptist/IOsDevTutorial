//
//  MultiTabs.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/29.
//

import SwiftUI

struct MultiTabs: View {
    let v1 = ToggleView()
    let v2 = StepperView()
    var body: some View {
        TabView {
            //Text("A").font(.system(size: 50))
            v1
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            //Text("B").font(.system(size: 50))
            v2
                .tabItem {
                    Image(systemName: "gear")
                    Text("Cart")
                }
        }
        
    }
}

struct MultiTabs_Previews: PreviewProvider {
    static var previews: some View {
        MultiTabs()
    }
}
