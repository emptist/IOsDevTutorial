//
//  TextEditorView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/18.
//

import SwiftUI

struct TextEditorView: View {
    @State var content: String = ""
    @State var showAlert: Bool = false
    
    // for now we need this to modify the background color below
    init () {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        VStack {
            TextEditor(text: $content)
                .background(Color.gray.opacity(0.3))
                .frame(height: 300)
            Button("Done") {
                showAlert = true
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Content"), message: Text(content))
            })
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
