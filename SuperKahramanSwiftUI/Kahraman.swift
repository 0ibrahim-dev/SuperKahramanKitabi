//
//  Kahraman.swift
//  SuperKahramanSwiftUI
//
//  Created by İbrahim Mengü on 31/3/24.
//

import Foundation
import MapKit
import CoreLocation

struct Kahraman: Identifiable {
    var id = UUID()
    var isim: String
    var gercekIsim: String
    var ImageName : String
    var sehir: String
    var meslek: String
    var koordinatlar: Koordinat
    
    var lokasyon : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: koordinatlar.latitude, longitude: koordinatlar.longtitude)
    }
    
}


struct Koordinat{
    var latitude: Double
    var longtitude: Double
}


let batman = Kahraman(isim: "Batman", gercekIsim: "Bruce Wayne", ImageName: "batman", sehir: "Gotham", meslek: "İş Adamı", koordinatlar: Koordinat(latitude: 41.81381753082312, longtitude: -87.74848428573006))

let superman = Kahraman(isim: "Superman", gercekIsim: "Clark Kent", ImageName: "superman", sehir: "Kansas", meslek: "Gazeteci", koordinatlar: Koordinat(latitude: 39.09891560837334, longtitude: -94.5675225842128))

let spiderman = Kahraman(isim: "Spiderman", gercekIsim: "Peter Parker", ImageName: "spiderman", sehir: "New York", meslek: "Fotoğrafçı", koordinatlar: Koordinat(latitude: 40.7236881558347, longtitude: -74.0039544714025))

let ironman = Kahraman(isim: "Iron Man", gercekIsim: "Tony Stark", ImageName: "ironman", sehir: "Los Angeles", meslek: "İş Adamı", koordinatlar: Koordinat(latitude: 33.76726682424201, longtitude: -118.18331934998784))

let superKahramanArray = [batman,superman,spiderman,ironman]
