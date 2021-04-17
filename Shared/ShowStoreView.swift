//
//  ShowStoreView.swift
//  Shared
//
//  Created by jk on 2021/4/10.
//

import SwiftUI
import StoreKit

struct ShowStoreView: View {
    @State var showAppStoreOverlay = false
    
    var body: some View {
        
            Button(action: {
                showAppStoreOverlay.toggle()
            }, label: {
                Label("show app", systemImage:"gift")
            })
            .appStoreOverlay(isPresented:$showAppStoreOverlay){
                SKOverlay.AppConfiguration(appIdentifier:"1063100471",position:.bottomRaised)
            }
        
    }
}

struct ShowStoreView_Previews: PreviewProvider {
    static var previews: some View {
        ShowStoreView()
    }
}
