//
//  AUIKitProgress.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/2.
//

import SwiftUI
import UIKit
import Combine

// view model
class GlobalData: ObservableObject {
    @Published var isActive: Bool = false
    var cancellableSubsriber: AnyCancellable?
    init() {
        cancellableSubsriber = isActive
            .delay(for: 3, Scheduler: RunLoop.main)
    }
    
}



struct AUIKitProgress: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AUIKitProgress_Previews: PreviewProvider {
    static var previews: some View {
        AUIKitProgress()
    }
}
