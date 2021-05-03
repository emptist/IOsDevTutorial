//
//  LabelOfImageText.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/18.
//

import SwiftUI

struct LabelOfImageText: View {
    var body: some View {
//        Label {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        } icon: {
//            Image(systemName: "book.circle")
//        }
        List {
            Label("this is a book", systemImage: "hand.wave")
            Label("this is another book", systemImage:"hand.point.right")
            Label("Classes in SwiftUI", systemImage:"flowchart")
        }
        //.font(.title)
        .padding()
    }
}

struct LabelOfImageText_Previews: PreviewProvider {
    static var previews: some View {
        LabelOfImageText()
            .environment(\.sizeCategory, .extraExtraExtraLarge)
    }
}
