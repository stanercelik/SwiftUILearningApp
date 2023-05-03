//
//  Superhero.swift
//  LearningApp
//
//  Created by Taner Çelik on 29.04.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
    
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}

let batman = SuperKahraman(isim: "Batman", gercekIsim: "Bruce Wayne" , gorselIsmi: "batman", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 20.0, longitude: 20.0))

let spiderMan = SuperKahraman(isim: "Örümcek Adam", gercekIsim: "Bruce Wayne" , gorselIsmi: "spiderMan", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 38.0, longitude: 41.0))

let hulk = SuperKahraman(isim: "Hulk", gercekIsim: "Bruce Wayne" , gorselIsmi: "hulk", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 10.0, longitude: -20.0))

let superman = SuperKahraman(isim: "Super Man", gercekIsim: "Bruce Wayne" , gorselIsmi: "superMan", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 82.0, longitude: 2.0))

let wonderWoman = SuperKahraman(isim: "Wonder Woman", gercekIsim: "Bruce Wayne" , gorselIsmi: "wonderWoman", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: -10.0, longitude: 20.0))

let superKahramanDizisi = [batman, spiderMan, hulk, superman, wonderWoman]
