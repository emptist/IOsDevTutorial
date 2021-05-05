//
//  UsingList.swift
//  IOsDevTutorial (iOS)
//
//  Created by jk on 2021/5/5.
//

import SwiftUI

struct UsingList: View {
    @State var languages = ["Objective-C", "Swift", "Flutter"]
    
    var body: some View
    {
        NavigationView
        {
            List
            {
                ForEach(languages, id:\.self)
                { language in
                    Text(language)
                }
                .onInsert(of: ["demo"], perform:
                            { (offset, message) in
                                print(offset)
                            })
            }
            .navigationBarTitle(Text("Edit Row"), displayMode: .large)
            .navigationBarItems(trailing: HStack {
                Button(action: addItem, label: {
                    Text("Add")
                })
                
                Button(action: delItem, label: {
                    Text("Delete")
                })
            })
        }
    }
    
    func addItem()
    {
        languages.append("C++")
    }
    func delItem() {
        if languages.count > 0 {
            languages.removeLast()
        }
    }
}

#if DEBUG
struct UsingList_Previews: PreviewProvider {
    static var previews: some View {
        UsingList()
    }
}
#endif
