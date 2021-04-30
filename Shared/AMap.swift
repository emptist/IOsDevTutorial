//
//  AMap.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/5/1.
//

import SwiftUI
import MapKit

struct IdentifiableMapPin: Identifiable {
    var id: Int
    var mapPin: MapPin
}

struct AMap: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:39.9,longitude: 116.4), span: MKCoordinateSpan(latitudeDelta:0.02,longitudeDelta: 0.02))
    @State var mapPins = Array<IdentifiableMapPin>()
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems:mapPins) { mp in
            mp.mapPin
        }
        .onAppear(perform: {
            let newMapPin = MapPin(coordinate: CLLocationCoordinate2D(latitude: 39.9, longitude: 116.4))
            mapPins.append(IdentifiableMapPin(id: mapPins.count, mapPin: newMapPin))
        })
    }
}

struct AMap_Previews: PreviewProvider {
    static var previews: some View {
        AMap()
    }
}
