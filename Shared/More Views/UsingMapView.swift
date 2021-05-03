//
//  UsingMapView.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/1.
//

import SwiftUI
import MapKit

struct UsingMapView: UIViewRepresentable {
    var lattd = 39.9153
    var longtd = 116.3972
    var zoomLevel = 0.02
    
    func makeUIView(context: UIViewRepresentableContext<UsingMapView>) -> MKMapView {
        return MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<UsingMapView>) {
        uiView.showsUserLocation = true
        uiView.mapType = MKMapType.satellite
        
        let coordinate2D = CLLocationCoordinate2D(latitude: lattd, longitude: longtd)
        let region = MKCoordinateRegion(center: coordinate2D, span: MKCoordinateSpan(latitudeDelta: zoomLevel, longitudeDelta: zoomLevel))
        
        uiView.setRegion(uiView.regionThatFits(region), animated: true)
    }
    
}

struct UsingMapView_Previews: PreviewProvider {
    static var previews: some View {
        UsingMapView()
    }
}
