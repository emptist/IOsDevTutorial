//
//  ProgressViewHorizontalBar.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/3.
//

import SwiftUI

struct ProgressViewHorizontalBar: View {
    @State var value = 30.0
    
    var body: some View {
        VStack {
            ProgressView(value: value, total: 100.0)
            {
                Text(String(format: "%.2f", value))
            }
            
            Button("go ahead") {
                if value <= 90
                {
                    value += 10
                }
                
            }

        }
//        VStack {
//            ProgressView()
//                .progressViewStyle(CircularProgressViewStyle(tint: Color.blue))
//        }
    }
}

struct UsingSwiftUIViewInUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewHorizontalBar()
    }
}
