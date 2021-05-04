//
//  UsingLazyZStack.swift
//  IOsDevTutorial (iOS)
//
//  Created by jk on 2021/5/4.
//

import SwiftUI

struct UsingLazyZStack: View {
    var cols: [GridItem] = [
        GridItem(GridItem.Size.flexible(),spacing: 10),
        GridItem(GridItem.Size.fixed(160),spacing: 10),
        GridItem(GridItem.Size.flexible(),spacing: 10),
        GridItem(GridItem.Size.flexible(),spacing: 10)
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: cols) {
                ForEach(1...10, id:\.self) { index in
                    Image("Avarta-\(index)")
                        .resizable()
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                }
            }
        }
        .padding()
    }
}

struct UsingLazyZStack_Previews: PreviewProvider {
    static var previews: some View {
        UsingLazyZStack()
    }
}
