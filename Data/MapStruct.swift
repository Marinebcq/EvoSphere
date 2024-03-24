//
//  MapStruct.swift
//  Application IOS
//
//  Created by apprenant47 on 17/03/2024.
//

import SwiftUI
import MapKit

struct Lieux: Identifiable {
    let id = UUID()
    let name: String
    let cityName: String
    let coordinate: CLLocationCoordinate2D
    let description: String
    let imageName: String
    let adresse: String
    let pt: PlanetType
    let link: URL
}

struct Activity: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let coordinate: CLLocationCoordinate2D
    let price: Double
    
}

struct Psychologue: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let adresse: String
    let specialité: String
    let coordinate: CLLocationCoordinate2D
}


struct Asso: Identifiable {
    
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    let coordinate: CLLocationCoordinate2D
    
}




