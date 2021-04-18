//
//  DateFormatText.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/17.
//

import SwiftUI

struct DateFormatText: View {
    let dt = Date()
    static let dateFormatter: DateFormatter = {
        var formatter = DateFormatter()
        formatter.dateStyle = .medium //.short
        return formatter
    }()
    var body: some View {
        Text("It's \(dt, formatter: Self.dateFormatter)")
            .font(.title)
            .padding()
//        + Text(" It's \(dt, formatter: Self.dateFormatter)")
//            .font(.title)
//            //.padding()
    }
}

struct DateFormatText_Previews: PreviewProvider {
    static var previews: some View {
        DateFormatText()
    }
}
