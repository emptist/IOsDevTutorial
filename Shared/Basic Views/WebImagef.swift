//
//  WebImagef.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/19.
//

import SwiftUI

struct WebImagef: View {
    @State private var remoteImage: UIImage?
    let placeHolderOne = UIImage(named: "lotus001")
    
    var body: some View {
        Image(uiImage: remoteImage ?? placeHolderOne!)
            .onAppear(perform: fetchImage)
    }
    
    func fetchImage() -> Void {
        guard let url = URL(string: "http://hdjc8.com/images/logo.png") else {
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let image = UIImage(data: data!) {
                remoteImage = image
            } else {
                print("error when download image")
            }
            
        }.resume()
    }
}

struct WebImagef_Previews: PreviewProvider {
    static var previews: some View {
        WebImagef()
    }
}
