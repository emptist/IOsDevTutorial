//
//  UsingLazyVStack.swift
//  IOsDevTutorial (iOS)
//
//  Created by jk on 2021/5/4.
//

import SwiftUI

struct Header: View {
    var body: some View {
        Text("Header")
            .padding()
            .foregroundColor(.white)
            //.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
    }
}

struct MyCell: View {
    var cellIdx: Int
    var body: some View {
        Text("my cell #\(cellIdx)")
    }
}
struct UsingLazyVStack: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 20, pinnedViews: [.sectionHeaders]) {
                Section(header: Header()) {
                    ForEach(1...40, id: \.self) { count in
                        MyCell(cellIdx: count)
                    }
                }
            }
        }
        .padding()
    }
}

struct UsingLazyVStack_Previews: PreviewProvider {
    static var previews: some View {
        UsingLazyVStack()
    }
}
