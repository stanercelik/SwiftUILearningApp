//
//  MapView.swift
//  LearningApp
//
//  Created by Taner Çelik on 27.04.2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    /*@State var region = MKCoordinateRegion(center: superKahramanDizisi[4].koordinatLokasyonu, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    //View olarak kullansaydık üstteki giib kullanacaktık.
    
    var body: some View {
        Map(coordinateRegion: $region)
        Text("asdasd")
    }*/
    
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.7, longitudeDelta: 0.7)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
            
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: superKahramanDizisi[1].koordinatLokasyonu )
    }
}
