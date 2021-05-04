//
//  UsingHStack.swift
//  IOsDevTutorial (iOS)
//
//  Created by jk on 2021/5/4.
//

import SwiftUI

struct UsingHStack: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            ZStack(alignment: .leading) {
                Image("lotus001")
                    .resizable()//
                    .clipShape(Circle())
//                    .aspectRatio(contentMode: .fit)
//                    .scaledToFit()
                
                Text("Sun Moon Lotus")
                    .font(.system(size: 28))
                    .foregroundColor(.white)
                Text("a line of text")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 30)
            }
            HStack(alignment:.top, spacing: 20) {
                Image.init(systemName: "book.fill")
                Text("this is a book")
                Spacer()
                Image.init(systemName: "icloud.and.arrow.down")
            }.padding()
            
            Image("lotus001").resizable().aspectRatio(contentMode: .fit)//.scaledToFit()
            
            Text("This is a paragraph which should be very long, in fact, too long to display on a single line.")
        }.padding()
    }
}

struct UsingHStack_Previews: PreviewProvider {
    static var previews: some View {
        UsingHStack()
    }
}
