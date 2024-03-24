//
//  Models.swift
//  Application IOS
//
//  Created by apprenant47 on 14/03/2024.
//

import SwiftUI

enum PlanetType {
    case confiance, hygiene, equilibre
}


struct Planet: Identifiable {
    let id = UUID()
    let name : String
    let image : String
    let pt : PlanetType
    let color1: Color
    let color2: Color

    }



struct Article: Identifiable{
    let id = UUID()
    let title: String
    let url : String
    let pt: PlanetType
    let icon: String
}




struct Citation: Identifiable{
    let id = UUID()
    let author: String
    let content: String
    let pt: PlanetType
}



struct Defi: Identifiable{
    let id = UUID()
    let title: String
    let content: String
    let pt: PlanetType
    let color1: Color
    let color2: Color
}



struct Video: Identifiable{
    let id = UUID()
    let title: String
    let url: String
    let pt: PlanetType
}





