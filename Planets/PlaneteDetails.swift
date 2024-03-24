//
//  PlaneteDetails.swift
//  StudentsTeaching
//
//  Created by apprenant47 on 12/03/2024.
//

import SwiftUI
import YouTubePlayerKit











struct PlaneteDetails: View {
    @State var presentSheet = false
    @State private var isPresentWebView = false
    var planete : Planet
    @State var rotation: CGFloat = 0.0
    @State var currentArticle : Article = articles[0]
    var body: some View {
        
        ZStack { LinearGradient(gradient: Gradient(colors: [.fond, .fond2]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            

            
            ScrollView (showsIndicators: false) { 
                
                VStack(spacing: 20) {
                    Image(planete.image)
                        .resizable()
                        .rotationEffect(.degrees(360))
                        .frame(width: 200, height: 200)
                        .shadow(color: planete.color2, radius: 10, x: 0, y: 0)
                        .overlay(Capsule().stroke(Color.white, lineWidth: -200))
                                     .rotation3DEffect(.degrees(rotation), axis: (x: 200, y: 100, z: -500))
//                      Ca sert à masquer les attributs ci-dessous. Tu peux masquer les degrés et ainsi cacher la planète.
//                      
                                     .mask{
                                         Image(planete.image)
                                             .resizable()
                                             .rotation3DEffect(.degrees(rotation), axis: (x: 20, y: 10, z: -500))
                                         
                                         
                                             .overlay(Capsule().stroke(Color.white, lineWidth: 10))
                                             .shadow(radius: 100)
                                     }
                    HStack {
                        
                        Text("Articles")
                            .font(.custom("Futura-Medium", size: 20,relativeTo: .title))
                            .padding(10)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        Spacer()
                        
                        
                        
                    }
                    
                    
                    //         Article composent
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 20) {
                            
                            
                            
                            ForEach(getArticlesForPlanetType(pt: planete.pt)) { article in
                                
                                // ICI
                                // le visuel des articles
                                
                                HStack {
                                    Spacer()
                                    
                                    Image(systemName: article.icon)
                                        .foregroundStyle(planete.color2)
                                        .shadow(color: planete.color2, radius: 5, x: 0, y: 0)
                                        .font(.title)
                                    Spacer()
                                    Button(article.title) {
                                        // 2
                                        isPresentWebView = true
                                        currentArticle = article
                                        
                                    }
                                    Spacer()
                                }
                              
                                .frame(width: 186, height: 160)
                                .background(.gray.opacity(0.1))
                                .shadow(color: planete.color2, radius: 10, x: 0, y: 0)
                                .border(Color.gray.opacity(0.1))
                                .cornerRadius(20.0)
                                .foregroundColor(.white)
                                
                              
                                
                                
                                
                            }
                        }
                    }
                    
                    
                    
                    
                    .sheet(isPresented: $isPresentWebView) {
                        NavigationStack {
                            
                            
                            // 3
                            WebView(url: URL(string: currentArticle.url)!)
                            
                                .ignoresSafeArea()
                                .navigationTitle(currentArticle.title)
                                .navigationBarTitleDisplayMode(.inline)
                            
                        }.presentationDetents([.height(600.0), .large])
                    }
                    HStack {
                        
                        Text("Vidéos")
                            .font(.custom("Futura-Medium", size: 20,relativeTo: .title))
                            .padding(10)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        //                        .padding(10)
                        //                        .background(.white)
                        //                        .clipShape(Capsule())
                        //                        .padding(.horizontal)
                        Spacer()
                        
                        
                        
                    }
                    
                    //         Videos
           
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 15){
                            
                            ForEach(getVideosForPlanetType(pt: planete.pt)) {
                                video in
                                
                                
                                MonYoutubePlayer(url: YouTubePlayer(stringLiteral: video.url))
                                
                                
                            }
                        }
                    }
                        .padding(.horizontal)
                
                    
                    
                    //         Citation
                   
                
                    Button("CITATION") {
                        presentSheet = true
                        
                    }  .frame(width: 186, height: 60)
                        .background(.gray.opacity(0.1))
                        .shadow(color: planete.color2, radius: 10, x: 0, y: 0)
                        .border(Color.gray.opacity(0.2))
                        .cornerRadius(20.0)
                        .font(.custom("Futura-Medium", size: 20,relativeTo: .title))
                        .foregroundColor(.white)
                        .shadow(color: planete.color2, radius: 10, x: 0, y: 0)

                    
Rectangle()
                        .frame( height: 50).opacity(0.0)
        
                    
                    .sheet(isPresented: $presentSheet) {
                        ExtractedView(citation: getCitationsForPlanetType(pt: planete.pt).randomElement()!)
                    }
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
                    

     
                    
                }
            } .onAppear{
                withAnimation(.linear(duration: 6).repeatForever(autoreverses: true)){
                    rotation = .Magnitude(360)
                }
                
            }
            
        } .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
        
        
        
        
        
        
        
    }
    //        Struct View {
}
//    Body View {


#Preview {
    PlaneteDetails(planete: planeteC)
}

struct ExtractedView: View {
    var citation: Citation
    var body: some View {
        Text(citation.content)
        
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .presentationDetents([.height(140.0), .medium])
        Text(citation.author)
            .font(.title2)
    }
}
