//
//  TextViewParagraph.swift
//  xtutorial
//
//  Created by jk on 2021/4/15.
//

import SwiftUI

struct TextViewParagraph: View {
    var body: some View {
        let str = "hello-world-com"
        VStack {
            Text(str)
            Text(str)
                .tracking(10)
            Text(str)
                .kerning(10)
            Text(str)
                .blur(radius: 1)
            Text("struct TextViewParagraph_Previews: PreviewProvider { static var previews: some View {TextViewParagraph()}} struct TextViewParagraph_Previews: PreviewProvider { static var previews: some View {TextViewParagraph()}}")
                .lineSpacing(20)
                .lineLimit(nil)
                .padding()
            Text(str)
                .offset(x:40,y:0)
            Text(str)
                .frame(width: 240, height: 80, alignment: .center)
                .background(Color.orange)
            VStack {
                Text(str)
                    //.position(x:50,y:50)
                    .frame(width: 300, height: 100, alignment: .bottomTrailing)
                    .background(Color.blue)
                Text("struct TextViewParagraph_Previews: PreviewProvider { static var previews: some View {TextViewParagraph()}} struct TextViewParagraph_Previews: PreviewProvider { static var previews: some View {TextViewParagraph()}}")
                    .lineLimit(9)
                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)//, alignment: .center)
                    .multilineTextAlignment(.center)
                
            }
        }
    }
}

struct TextViewParagraph_Previews: PreviewProvider {
    static var previews: some View {
        TextViewParagraph()
    }
}
