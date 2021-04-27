//
//  DateFormat.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/28.
//

import SwiftUI

struct DateFormat: View {
    @State var formatedDate = "formatedDate"
    
    //- Mark: How to use Binding<Element>
    var bindingDate: Binding<Date> {
        Binding<Date>(get: {Date()}, set: { dt in
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            formatedDate = formatter.string(from: dt)
        })
    }

    var body: some View {
        VStack {
            DatePicker(selection: bindingDate, displayedComponents: DatePickerComponents.date, label: {Text("\(formatedDate)")})
            Text("Your choice: \(formatedDate)")
        }
    }
}

struct DateFormat_Previews: PreviewProvider {
    static var previews: some View {
        DateFormat()
    }
}
