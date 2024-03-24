//
//  Fonctions.swift
//  Application IOS
//
//  Created by apprenant47 on 14/03/2024.
//

import SwiftUI

/*
 Fonction permettant de filtrer les articles en fonction d'un type de
 planète.
 Cette fonction retourne un ensemble d'articles
 */
func getArticlesForPlanetType(pt: PlanetType) -> [Article] {
    
    // Tableau d'articles en sortie
    var articlesToReturn: [Article] = []
    
    // Filtrage des articles en fonction du type de planète
    for article in articles {
        if article.pt == pt {
            articlesToReturn.append(article)
        }
    }
    
    // La fonction retourne les articles filtrés
    return articlesToReturn
}





/*
 Fonction permettant de filtrer les citation en fonction d'un type de
 planète.
 Cette fonction retourne un ensemble de citation
 */
func getCitationsForPlanetType(pt: PlanetType) -> [Citation] {
    
    // Tableau d'articles en sortie
    var citationsToReturn: [Citation] = []
    
    // Filtrage des citations en fonction du type de planète
    for citation in citations {
        if citation.pt == pt {
           citationsToReturn.append(citation)
        }
    }
    
    // La fonction retourne les citations filtrés
    return citationsToReturn
}





/*
 Fonction permettant de filtrer les defis en fonction d'un type de
 planète.
 Cette fonction retourne un ensemble de defi
 */
func getDefisForPlanetType(pt: PlanetType) -> [Defi] {
    
    // Tableau de defi en sortie
    var defisToReturn: [Defi] = []
    
    // Filtrage des defis en fonction du type de planète
    for defi in defis {
        if defi.pt == pt {
           defisToReturn.append(defi)
        }
    }
    
    // La fonction retourne les defis filtrés
    return defisToReturn
}





/*
 Fonction permettant de filtrer les videos en fonction d'un type de
 planète.
 Cette fonction retourne un ensemble de video
 */
func getVideosForPlanetType(pt: PlanetType) -> [Video] {
    
    // Tableau de video en sortie
    var videosToReturn: [Video] = []
    
    // Filtrage des videos en fonction du type de planète
    for video in videos {
        if video.pt == pt {
           videosToReturn.append(video)
        }
    }
    
    // La fonction retourne les videos filtrés
    return videosToReturn
}



/*
 Fonction permettant de filtrer les Lieux en fonction d'un type de
 planète.
 Cette fonction retourne un ensemble de lieux
 */
func getLieuxForPlanetType(pt: PlanetType) -> [Lieux] {
    
    // Tableau de services en sortie
    var servicesToReturn: [Lieux] = []
    
    // Filtrage des services en fonction du type de planète
    for service in services {
        if service.pt == pt {
           servicesToReturn.append(service)
        }
    }
    
    // La fonction retourne les services filtrés
    return servicesToReturn
}






