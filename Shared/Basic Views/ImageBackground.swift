//
//  ImageBackground.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/19.
//

import SwiftUI

struct ImageBackground: View {
    var body: some View {
        VStack {
            HStack {
                Image("lotus001")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    //.brightness(0.4)
                Image("lotus002")
                    .resizable()
                    .mask(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    //.colorInvert()
            }.padding()
            ZStack {
                Image("lotus001")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .opacity(0.5)
                
                Image("lotus002")
                    //.resizable()
                    .blendMode(.multiply)
                    //.colorInvert()
            }.padding()
            Image("lotus002")
                .resizable()
                .frame(width:300,height: 200)
                .mask(Text("hello world".uppercased()).font(Font.system(size: 75).bold()))
            
        }
    }
}

struct ImageBackground_Previews: PreviewProvider {
    static var previews: some View {
        ImageBackground()
    }
}
