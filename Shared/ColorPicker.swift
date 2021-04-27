//
//  ColorPicker.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/28.
//

import SwiftUI

struct ColorPicker: View {
    @State var color = Color.black
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.black)
            Spacer()
                .frame(height: 10)
            //ColorPicker()
        }
    }
}

struct ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker()
    }
}
