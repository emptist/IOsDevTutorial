//
//  ACircularActivityView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/2.
//

import SwiftUI

struct ACircularActivityView: View {
    @State var progress = 0.5
    var body: some View {
        VStack {
            ProgressView(value: progress)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            ProgressView()
            Button("more",action: {progress += 0.05})
        }
    }
}

struct ACircularActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ACircularActivityView()
    }
}
