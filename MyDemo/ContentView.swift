//
//  ContentView.swift
//  MyDemo
//
//  Created by Akramjon on 25/05/23.
//

import SwiftUI
import MapKit

struct PinItem : Identifiable {
    
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    
}

struct ContentView: View {

    @State var region = MKCoordinateRegion(center: .init(latitude: 40.428170, longitude: 71.684747), latitudinalMeters: 300, longitudinalMeters: 300)
    @State var pin = PinItem(coordinate: .init(latitude: 40.428170, longitude: 71.684747))
    
    var body: some View {
      
         Map(
         
            coordinateRegion: $region,
            showsUserLocation: true,
            userTrackingMode: nil,
            annotationItems: [pin]
         ){ item in
             
             MapMarker(coordinate: item.coordinate)
             
         }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// 40.428170,71.684747)
