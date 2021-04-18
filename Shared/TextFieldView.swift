//
//  TextFieldView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/18.
//

import SwiftUI

struct TextFieldView: View {
    @State var username: String
    @State var nickname: String
    @State var password: String
    
    var body: some View {
        VStack {
            Text("Hello \(username)")
            Text("Are you \(nickname)?")
            
            TextField("input your name", text: $username, onEditingChanged:{ changed in
                print("onEditingChanged: \(changed) \(username)")
            }){
                print("username: \(username)")
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("nickname: \(nickname)", text: $nickname)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("password: \(password)", text: $password) {
                print("the password is \(password)")
            }
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(username: "", nickname: "", password: "")
    }
}
