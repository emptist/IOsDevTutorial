//
//  CircularActivityUIKit.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/2.
//

import SwiftUI
import UIKit

struct CircularActivityUIKit: View {
    @State var isActive = true
    
    var body: some View {
        loadingView(isActive: $isActive)
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { timer in
                    isActive.toggle()
                    timer.invalidate()
                }
            }
    }
}

struct loadingView: View {
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            Text("waiting")
            ActivityIndicator(isActive: $isActive)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.orange)
        .foregroundColor(.primary)
        .cornerRadius(20)
        .opacity(isActive ? 1 : 0)
    }
}

struct ActivityIndicator: UIViewRepresentable {
    
    @Binding var isActive: Bool
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isActive ? uiView.startAnimating() : uiView.stopAnimating()
    }
}


struct CircularActivities_Previews: PreviewProvider {
    static var previews: some View {
        CircularActivityUIKit()
    }
}
