//
//  ToggleView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/29.
//

import SwiftUI

struct ToggleView: View {
    @State var showNotification = true

    var body: some View {
        VStack {
            Text("show?") +
                Text("\(showNotification.description)")
                .foregroundColor(.green)
                .bold()
            
            Toggle.init(isOn: $showNotification, label: {
                Text("show notification")
            })
        }.padding()
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
