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
    @Published var isActive = true
    var cancellableSubsriber: AnyCancellable?
    
    init() {
        cancellableSubsriber = $isActive
            .delay(for: 3, scheduler: RunLoop.main)
            .map { _ in false }
            .assign(to: \.isActive, on: self)
    }
    
}



struct AUIKitProgress: View {
    @EnvironmentObject var gd: GlobalData
    
    var body: some View {
        LoadingView(isActive: $gd.isActive)
    }
}

struct AUIKitProgress_Previews: PreviewProvider {
    static var previews: some View {
        let gd = GlobalData()
        //gd.isActive = true
        return AUIKitProgress().environmentObject(gd)
    }
}
