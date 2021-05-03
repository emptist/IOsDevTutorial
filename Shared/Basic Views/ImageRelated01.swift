//
//  ImageRelated01.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/19.
//

import SwiftUI

struct ImageRelated01: View {
    var body: some View {
        VStack {
            //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Image("lotus001")
            Image(systemName: "book")
                .foregroundColor(.red)
                .font(.system(size: 50)) //(.largeTitle)
            Image("lotus001")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ImageRelated01_Previews: PreviewProvider {
    static var previews: some View {
        ImageRelated01()
    }
}
