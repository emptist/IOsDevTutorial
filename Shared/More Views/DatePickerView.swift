//
//  DatePickerView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/25.
//

import SwiftUI

struct DatePickerView: View {
    var myDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            DatePicker(selection:$selectedDate, displayedComponents:[.date,.hourAndMinute] /*DatePickerComponents.date*/) {
                Text("Any Date")
            }
            DatePicker(selection:$selectedDate,in:Date()...Date().advanced(by: 7*24*3600), displayedComponents:[.date,.hourAndMinute] /*DatePickerComponents.date*/) {
                Text("Some Date")
            }
            Text("Your choice is \(selectedDate, formatter:myDateFormatter)")
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
