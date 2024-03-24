//
//  MapLocalisation.swift
//  Application IOS
//
//  Created by apprenant47 on 17/03/2024.
//

import Foundation
import MapKit


  var services = [
    Lieux(
        name: "Karaoke",
        cityName: "Lille",
        coordinate: CLLocationCoordinate2D(latitude: 50.630416490737325, longitude: 3.055773749657054),
        description: "Venez entre amis, en famille ou avec des amis pour vous amusez à chanter et rire",
        imageName: "karafun",
        adresse: "",
        pt : .confiance,
        link: URL(string: "https:developer.apple.com/documentation/foundation/url")!
      ),
    
    Lieux(
        name:"Gwenaelle M" ,
        cityName: "V-L",
        coordinate: CLLocationCoordinate2D(latitude: 50.630404298395966, longitude: 3.0650462049975697),
        description: "Diplômée en Psychopathologie Clinique et Santé, j’exerce mon métier de psychologue clinicienne avec passion, animée par cette volonté de redonner aux personnes le plus rapidement possible bien-être et sérénité, une meilleure utilisation de leur énergie, de leurs forces et de leurs compétences. Je collabore régulièrement avec des professionnels, organismes, partenaires et structures publiques ou privées.",
        imageName: "gwen_img",
        adresse: "",
        pt : .equilibre,
        link: URL(string: "https:developer.apple.com/documentation/foundation/url")!
    ),
    
    Lieux(
        name: "Rgénére",
        cityName: "Lillle",
        coordinate: CLLocationCoordinate2D(latitude: 50.623608468447074, longitude: 3.068002764440485),
        description: "gsqg",
        imageName: "Reg",
        adresse: "25 Rue d'Arras, 59000 Lille",
        pt : .hygiene,
        link: URL(string: "https://solidarites.lille.fr/acteur/803/3-r-genere.htm")!
    ),
    
    Lieux(name: "MAUREEN AUGRAS",
          cityName: "Vieux_Lille",
          coordinate: CLLocationCoordinate2D(latitude: 50.64447845779776, longitude: 3.055489110912876),
          description: "",
          imageName: "M.A",
          adresse: "104 rue Royale, Lille 59800",
          pt: .hygiene,
          link: URL(string: "https://maureenaugras.com/")!
    )  ,
    Lieux(name: "Diet",
          cityName: "Lille",
          coordinate: CLLocationCoordinate2D(latitude: 50.62842023522687, longitude: 3.04281228310405),
          description: "J’accueille toutes personnes soucieuses de leur alimentation, les femmes enceintes, les enfants, les adolescents les sportifs et les personnes ayant des pathologies nécessitant un accompagnement diététique spécifique.En tant que Diététicien-nutritionniste, je ne vous parlerai pas de régimes restrictifs (sauf si certaines pathologies l’imposent) mais plutôt de rééquilibrage alimentaire en vous proposant une approche globale où le plaisir , la variété des aliments et le respect de votre équilibre et la pleine conscience sont présents.",
          imageName: "B.D",
          adresse: "26 rue d’Esquermes , 59000 LILLE",
          pt: .hygiene,
          link: URL(string:"https://dieteticien-nutrition.fr/")!
         ),
    
    Lieux(name:"Compagnie d'arc de Lille",
          cityName: "Lille",
          coordinate: CLLocationCoordinate2D(latitude: 50.630298413663056, longitude: 3.029859242327895),
          description: "Tire à l'arc",
          imageName: "taa",
          adresse: "127 Rue des Bois Blancs, 59000 Lille",
          pt: .confiance,
          link: URL(string: "https://www.archers-de-lille.fr/")!
          ),
    
    
    Lieux(name: "Panthers Club Lille",
          cityName: "Lille",
          coordinate: CLLocationCoordinate2D(latitude: 50.62327059624758, longitude: 3.0478792993394834),
          description: "Club de box",
          imageName: "box",
          adresse: "Complexe Sportif, 62 Rue d'Iéna, 59000 Lille",
          pt: .equilibre,
          link: URL(string: "https://panthersclublille.com/")!
          ),
    
    
    
    Lieux(name: "École Française de Parachutisme Lille Bondues",
          cityName: "Lille",
          coordinate: CLLocationCoordinate2D(latitude: 50.687194478456725, longitude: 3.0834553259895183),
          description: "Renforcer son mental, c’est donc développer sa confiance en soi.",
          imageName: "saut",
          adresse: "98 Parc de l'aérodrome, 59910 Bondues",
          pt: .confiance,
          link: URL(string:"https://www.parachutisme-lille.fr/")!
         ),
    
    
    Lieux(name: "Salsa",
              cityName: "Wazemmes",
              coordinate: CLLocationCoordinate2D(latitude: 50.634878351132, longitude: 3.073658689515803),
              description: "Salsa Picante, votre association de référence pour la Salsa, Bachata, Kizomba et Zumba à Lille. Vous y retrouverez toutes les informations utiles pour apprendre, suivre des stages et pratiquer lors de nos soirées à Lille !",
              imageName: "Salsa",
              adresse: "4 Rue du Croquet, 59800 Lille",
              pt: .confiance,
              link: URL(string: "https://www.salsa-picante.fr/")!
              ),
    
    Lieux(name: "Spa Center Lille | Spa Privatif sur réservation",
          cityName: "Lille",
          coordinate: CLLocationCoordinate2D(latitude: 50.63568029092104, longitude: 3.064392331726228),
          description: "Massage pour détendre",
          imageName: "Massage",
          adresse: "9 Rue du Plat, 59800 Lille",
          pt: .equilibre,
          link: URL(string: "https://www.spa-center-lille.fr/#popup/")!
          ),
    
    
    
    
    
    
    Lieux(name: "Sahaja Yoga",
          cityName: "Lille",
          coordinate: CLLocationCoordinate2D(latitude: 50.63929102256077, longitude: 3.0489166514189585),
          description: "Yogaaaaaa",
          imageName: "yooga",
          adresse: "19 Rue Solférino, 59000 Lille",
          pt: .hygiene,
          link: URL(string: "https://yogalille.fr/")!
         ),
    
    
    Lieux(name: "L'hirondelle Bleue",
              cityName: "Rebreuviette",
              coordinate: CLLocationCoordinate2D(latitude: 50.26084347789857, longitude: 2.360271971132879),
              description: "Nous vous proposons, à l'Hirondelle Bleue, un modèle de soins holistiques, en alliant le meilleur de la médecine conventionnelle et les bienfaits des thérapies complémentaires. Dans un domaine au coeur de la nature, les professionnels de l'Hirondelle Bleue travaillent en coordination pour vous proposer, par une approche multidimensionnelle, un parcours de soins complets et personnalisés. Nous vous permettons de reprendre les commandes de votre santé en devenant acteur de vos soins, et non pas consommateur.contact@lhirondelle-bleue.fr",
              imageName: "HB",
              adresse: "4 rue d'Ivergny 62270",
              pt: .equilibre,
              link: URL(string:"https://lhirondelle-bleue.fr/")!
          ),
    
    
    

    
    
//    Asso(name: "R'généré",
//         imageName: "Rng",
//         description: "fqeF",
//         coordinate: CLLocationCoordinate2D(latitude: 50.623608468447074, longitude: 3.068002764440485)),
//
    ]
    
    
    
    
//    Psychologue(name: <#T##String#>,
//                image: <#T##String#>,
//                adresse: <#T##String#>,
//                specialité: <#T##String#>,
//                coordinate: <#T##CLLocationCoordinate2D#>)
//
   



//var Meeting_people = CLLocationCoordinate2D(
//    latitude: 50.63245303373764,
//    longitude: 3.053118107681529)
//
//
//
//var Yoga = CLLocationCoordinate2D(
//    latitude: 50.63256418258996,
//    longitude: 3.0664532887204223)
//
//
//
//
//

