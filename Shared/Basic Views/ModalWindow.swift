//
//  ModalWindow.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/19.
//

import SwiftUI

struct ModalWindow: View {
    @State var isPresent = false
    
    var body: some View {
        VStack {
            Button(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) {
                isPresent = true
            }
            .sheet(isPresented: $isPresent, content: {
                MyDetailView(message: "Modal Sindow")
            })
        }
    }
}

struct MyDetailView: View {
    let message: String
    var body: some View {
        VStack {
            Text(message)
                .font(.title)
        }
    }
}

struct ModalWindow_Previews: PreviewProvider {
    static var previews: some View {
        ModalWindow()
    }
}
