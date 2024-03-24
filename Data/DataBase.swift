//
//  DataBase.swift
//  Application IOS
//
//  Created by apprenant47 on 14/03/2024.
//

import SwiftUI

// Données des planètes

let planeteC = Planet(name: "Confiance en soi", image: "planeteC", pt: .confiance, color1: .colorC, color2: .colorC2)

let planeteH = Planet(name: "Hygiene de vie", image: "planeteH", pt: .hygiene, color1: .colorH, color2: .colorH2)

let planeteE = Planet(name: "Équilibre émotionnel", image: "planeteE", pt: .equilibre, color1: .colorE, color2: .colorE2)

var planetes : [Planet] = [planeteC, planeteH, planeteE]


// Données des Articles

let articleC1 = Article(title: "Mental : Les 7 attitudes", url: "https://entrepreneurs.lesechos.fr/ma-vie/developpement-personnel/mental-7-attitudes-pour-renforcer-la-confiance-en-soi-2020193", pt: .confiance, icon: "brain.head.profile.fill")
let articleC2 = Article(title: "Savoir qu’on mérite le bonheur", url: "https://www.psychologies.com/Moi/Se-connaitre/Estime-de-soi/Articles-et-Dossiers/Oser-les-cles-de-la-confiance-en-soi/Avoir-confiance-en-soi-c-est-savoir-qu-on-merite-le-bonheur", pt: .confiance, icon: "heart.fill")
let articleC3 = Article(title: "Qu'est ce que la confiance en soi ?", url: "https://www.maddyness.com/2019/01/04/confiance-en-soi/", pt: .confiance, icon: "magnifyingglass")
let articleC4 = Article(title: "Ses forces et ses faiblesses", url: "https://ftmo.com/fr/connaitre-ses-forces-et-ses-faiblesses/", pt: .confiance, icon: "infinity")
let articleC5 = Article(title: "Prise de parole en public", url: "https://www.laurejeannin-formation.com/prise-de-parole-en-public/", pt: .confiance, icon: "person.3.sequence.fill")
let articleC6 = Article(title: "Votre zone de confort", url: "https://www.noovomoi.ca/vivre/bien-etre/article.sortez-de-votre-zone-de-confort.1.9100900.html", pt: .confiance, icon: "house.fill")


let articleH1 = Article(title: "Alimentation équilibrée", url: "https://www.pourbienvieillir.fr/les-bienfaits-dune-alimentation-equilibree", pt: .hygiene, icon: "fork.knife")
let articleH2 = Article(title: "L’activité physique", url: "https://occitanie.mutualite.fr/actualites/lactivite-physique-bouger-pour-rester-en-bonne-sante/", pt: .hygiene, icon: "dumbbell.fill")
let articleH3 = Article(title: "Sommeil pour le cerveau", url: "https://montougo.ca/se-sentir-bien/sommeil/les-benefices-du-sommeil-pour-le-cerveau/", pt: .hygiene, icon: "brain.fill")
let articleH4 = Article(title: "Santé et prévention", url: "https://www.france-assos-sante.org/66-millions-dimpatients/sante-dans-votre-quotidien/sante-et-comportements/", pt: .hygiene, icon: "cross.case.fill")
let articleH5 = Article(title: "Top 10 des conseils", url: "https://www.labelleadresse.com/conseils-astuces/beaute/conseils-beaute-au-quotidien/beaute-soin-du-corps-hygiene-vie", pt: .hygiene, icon: "hand.thumbsup.fill")
let articleH6 = Article(title: "Les bienfaits de la nature", url: "https://observatoireprevention.org/2021/07/08/les-bienfaits-de-la-nature-sur-la-sante-globale/", pt: .hygiene, icon: "leaf.fill")



let articleE1 = Article(title: "Trouver l'équilibre", url: "https://nospensees.fr/comment-maintenir-lequilibre-psychologique/", pt: .equilibre, icon: "equal.circle.fill")
let articleE2 = Article(title: "Vos émotions", url: "https://www.psychologue.net/articles/les-emotions-sont-fondamentales-amies-ou-ennemis-au-travail", pt: .equilibre, icon: "heart.fill")

let articleE3 = Article(title: "l'auto-sabotage", url: "https://www.la-clinique-e-sante.com/blog/confiance-estime/nevrose-echec", pt: .equilibre, icon: "person.fill.xmark")

let articleE4 = Article(title: "La santé mentale", url: "https://lejournal.cnrs.fr/articles/il-ny-a-pas-de-sante-sans-sante-mentale", pt: .equilibre, icon: "heart.text.square.fill")
let articleE5 = Article(title: "Équilibre vie pro / perso", url: "https://www.scbs-education.com/equilibre-vie-personnelle-et-professionnelle-un-mythe-ou-une-necessite/", pt: .equilibre, icon: "figure.stand.line.dotted.figure.stand")

let articleE6 = Article(title: "Être plus épanouie", url: "https://enrouteverslaserenite.fr/comment-se-remettre-en-question/", pt: .equilibre, icon: "figure.walk.motion")











let articles = [articleC1, articleC2, articleC3, articleC4, articleC5, articleC6, articleH1, articleH2, articleH3, articleH4, articleH5, articleH6, articleE1, articleE2, articleE3, articleE4, articleE5, articleE6]

// Données des Citations

let citationC1 = Citation(author: "Albert Camus", content: "« Être différent n’est ni une bonne chose ni une mauvaise chose. Cela signifie simplement que vous êtes suffisamment courageux pour être vous-même. »", pt: .confiance)
let citationC2 = Citation(author: "William Shakespeare", content: "« Nous savons ce que nous sommes, mais nous ignorons ce que nous pourrions être. »", pt: .confiance)
let citationC3 = Citation(author: "Martin Luther King", content: "« Croyez en vos rêves et ils se réaliseront peut-être. Croyez-en vous et ils se réaliseront sûrement. »", pt: .confiance)
let citationC4 = Citation(author: "François de La Rochefoucauld", content: "« La confiance de plaire est souvent un moyen de déplaire infailliblement. »", pt: .confiance)
let citationC5 = Citation(author: "Isabelle Huppert", content: "« Dans la confiance, on se donne mutuellement des ailes. Cette réciprocité est très importante. On est élu par quelqu'un, mais on le choisit aussi. »", pt: .confiance)
let citationC6 = Citation(author: "Marc Goldstein", content: "« La confiance se gagne en gouttes et se perd en litres. »", pt: .confiance)

let citationH1 = Citation(author: "Pierre de Coubertin", content: "« Le sport va chercher la peur pour la dominer, la fatigue pour en triompher, la difficulté pour la vaincre. »", pt: .hygiene)
let citationH2 = Citation(author: "Michael Jordan", content: "« Il faut se fixer des buts avant de pouvoir les atteindre. »", pt: .hygiene)
let citationH3 = Citation(author: "Emmanuel Pinda", content: "« Si tu veux faire quelque chose, ou tu trouves un moyen ou tu trouves des excuses. »", pt: .hygiene)
let citationH4 = Citation(author: "Hippocrate", content: "« Que ton aliment soit ta seule médecine ! »", pt: .hygiene)
let citationH5 = Citation(author: "Fabien Canu", content: "« Le sport ne fait pas vivre plus vieux, mais fait vivre plus jeune. »", pt: .hygiene)
let citationH6 = Citation(author: "Jean Giraudoux", content: "« Le sport consiste à déléguer au corps quelques-unes des vertus les plus fortes de l’âme. »", pt: .hygiene)


let citationE1 = Citation(author: "Victor Hugo", content: "« Mettre tout en équilibre, c'est bien ; mettre tout en harmonie, c'est mieux. »", pt: .equilibre)
let citationE2 = Citation(author: "De Tanya Sénécal ", content: "« Exprimer ses émotions, c'est comme d'enlever les nuages noirs devant le soleil pour laisser pousser les fleurs. »", pt: .equilibre)
let citationE3 = Citation(author: "De Roger Fournier", content: "« Une vie sans émotion est une vie perdue. »", pt: .equilibre)
let citationE4 = Citation(author: "Arnaud Desjardins", content: "« Si vous voulez être libre de vos émotions il faut avoir la connaissance réelle, immédiate de vos émotions. »", pt: .equilibre)
let citationE5 = Citation(author: "Jean-Paul Sartre", content: "« Nous appellerons émotion une chute brusque de la conscience dans le magique. »", pt: .equilibre)
let citationE6 = Citation(author: "Ardashir Vakil", content: "« Quand la compétition est farouche entre deux rivaux, le gagnant est celui qui a le plus grand contrôle de ses émotions. »", pt: .equilibre)





let citations = [citationC1, citationC2, citationC3, citationC4, citationC5, citationC6, citationH1, citationH2, citationH3, citationH4, citationH5, citationH6, citationE1, citationE2, citationE3, citationE4, citationE5, citationE6]

// Données des Défis

let defiC1 = Defi(title: "Apprenez à vous valoriser", content: "Exprimez 5 choses positives sur vous", pt: .confiance, color1: .colorC, color2: .colorC2)
let defiC2 = Defi(title: "Vos succès existent", content: "À la fin de la journée, célébrer vos succès, qu'ils soient petits ou grands", pt: .confiance, color1: .colorC, color2: .colorC2)
let defiC3 = Defi(title: "Se reconnecter au positif", content: "Gardez un esprit positif quoi qu'il arrive tout au long de la journée", pt: .confiance, color1: .colorC, color2: .colorC2)

let defiH1 = Defi(title: "Préparez vous à passer une nuit saine", content: "Rangez votre téléphone et lisez un livre avant de vous endormir", pt: .hygiene, color1: .colorH, color2: .colorH2)
let defiH2 = Defi(title: "Travaillez votre cardio", content: "Organisez un jogging de 30 minutes", pt: .hygiene, color1: .colorH, color2: .colorH2)
let defiH3 = Defi(title: "Anti-stress", content: "Allez au travail à vélo", pt: .hygiene, color1: .colorH, color2: .colorH2)

let defiE1 = Defi(title: "S'ouvrir aux autres", content: "Faites 3 compliments à 3 personnes différentes", pt: .equilibre, color1: .colorE, color2: .colorE2)
let defiE2 = Defi(title: "Zénitude", content: "Organisez une séance de yoga", pt: .equilibre, color1: .colorE, color2: .colorE2)
let defiE3 = Defi(title: "Libère toi", content: "Écrivez 5 choses douloureuses sur un papier et brulez le", pt: .equilibre, color1: .colorE, color2: .colorE2)

let defis = [defiC1, defiC2, defiC3, defiH1, defiH2, defiH3, defiE1, defiE2, defiE3]

// Données des Vidéos

let videoC1 = Video(title: "5 TIPS POUR AVOIR CONFIANCE EN SOI", url: "https://www.youtube.com/watch?v=5cQqsXj4Bmc", pt: .confiance)
let videoC2 = Video(title: "Oser parler en public", url: "https://www.youtube.com/watch?v=x9asd81UmIc", pt: .confiance)
let videoC3 = Video(title: "Stoïcisme", url: "https://www.youtube.com/watch?v=RlyjMUGzS2Q", pt: .confiance)
let videoC4 = Video(title: "Oser s'aimer", url: "https://www.youtube.com/watch?v=RX3uQsBVyzA", pt: .confiance)
let videoC5 = Video(title: "ACCEPTER SES DÉFAUTS", url: "https://www.youtube.com/watch?v=hwTRjERThkY", pt: .confiance)
let videoC6 = Video(title: "SORTIR de ta ZONE DE CONFORT", url: "https://www.youtube.com/watch?v=cNzls4rrkrs", pt: .confiance)

let videoH1 = Video(title: "Manger équilibré, ça veut dire quoi ? ", url: "https://www.youtube.com/watch?v=C7NdShlrRAQ", pt: .hygiene)
let videoH2 = Video(title: "Les vertus d’un sommeil de qualité", url: "https://www.youtube.com/watch?v=uVdFrzZoehk", pt: .hygiene)
let videoH3 = Video(title: "LA MORNING ROUTINE ", url: "https://www.youtube.com/watch?v=oNxIUfb26jI", pt: .hygiene)
let videoH4 = Video(title: "10 HABITUDES SIMPLES", url: "https://www.youtube.com/watch?v=NOI65R7lJtk", pt: .hygiene)
let videoH5 = Video(title: "Les 4 piliers indispensables ", url: "https://www.youtube.com/watch?v=frQqKwYkNPM", pt: .hygiene)
let videoH6 = Video(title: "hygiène de vie AU TOP", url: "https://www.youtube.com/watch?v=mf4W7iLBb6c", pt: .hygiene)



let videoE1 = Video(title: "L'exercice à faire maintenant !", url: "https://www.youtube.com/watch?app=desktop&v=5m9BvcLiwgY", pt: .equilibre)
let videoE2 = Video(title: "Calmer le mental", url: "https://www.youtube.com/watch?v=hnV6EOYdlZs", pt: .equilibre)
let videoE3 = Video(title: "3 Conseils pour les personnes Hypersensibles ", url: "https://www.youtube.com/watch?v=PCh4fFMnt4c", pt: .equilibre)
let videoE4 = Video(title: "Comment ne plus avoir peur de l’échec ?", url: "https://www.youtube.com/watch?v=dgkgUyHagLs", pt: .equilibre)
let videoE5 = Video(title: "La conscience de soi et de sa beauté intérieure", url: "https://www.youtube.com/watch?v=xOn3N3JtDE4", pt: .equilibre)
let videoE6 = Video(title: "Méditation | Nettoyage émotionnel ", url: "https://www.youtube.com/watch?v=3-fESb8KTCk", pt: .equilibre)

let videos = [videoC1, videoC2, videoC3, videoC4, videoC5, videoC6, videoH1, videoH2, videoH3, videoH4, videoH5, videoH6, videoE1, videoE2, videoE3, videoE4, videoE5, videoE6]



