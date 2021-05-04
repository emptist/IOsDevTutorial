//
//  GroupsPreview.swift
//  IOsDevTutorial (iOS)
//
//  Created by jk on 2021/5/4.
//

import SwiftUI

struct GroupsPreview: View {
    var body: some View {
        Group {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("body 2")
            Text("body 3")
        }.font(.largeTitle)
    }
}

struct GroupsPreview_Previews: PreviewProvider {
    static var previews: some View {
        GroupsPreview()
    }
}
