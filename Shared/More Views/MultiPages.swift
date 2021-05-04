//
//  MultiPages.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/30.
//

import SwiftUI

struct MultiPages: View {
    var body: some View {
        ScrollView {
            TabView {
                Text("The Home Page")
                    .font(.system(size: 35))
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(Color.orange)
                    .tabItem {
                        Image(systemName: "hourse")
                        Text("Home")
                    }
                Text("Settings Page")
                    .font(.system(size: 35))
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(Color.purple)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Home")
                    }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode:.always))
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MultiPages_Previews: PreviewProvider {
    static var previews: some View {
        MultiPages()
    }
}
