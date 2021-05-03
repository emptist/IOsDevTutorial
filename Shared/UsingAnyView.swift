//
//  UsingAnyView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/3.
//

import SwiftUI

struct UsingAnyView: View {
    private var ramdomBool = Bool.random()
    
    var body: some View {
        Group {
            if ramdomBool {
                Text("Not Nil")
            }
            else {
                Text("Nil")
            }
        }
    }
}

struct UsingAnyView_Previews: PreviewProvider {
    static var previews: some View {
        UsingAnyView()
    }
}
