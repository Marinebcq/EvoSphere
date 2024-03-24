//
//  Test.swift
//  Application IOS
//
//  Created by apprenant69 on 15/03/2024.
//

import SwiftUI
import MapKit

struct MapsViews: View {
    
//    services.filter {
//        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
//    }
    @State private var service : PlanetType = .confiance
    @State var position : MapCameraPosition = .automatic
    @State var showModal : Bool = false
    @State var selectedLieux: Lieux?
    @State var searchText = ""
 
    var body: some View {
        
        NavigationStack{
            
            Picker("", selection: $service) {
                
                Text("Confiance en soi").tag(PlanetType.confiance)
                Text("Hygiène de vie").tag(PlanetType.hygiene)
                Text("Équilibre").tag(PlanetType.equilibre)
                

            }
            .pickerStyle(.segmented)
            .background(.fond2)
            .cornerRadius(20.0)
            .padding(.horizontal)
            .padding(.top)
            Map(position : $position){
                ForEach(getLieuxForPlanetType(pt: service)){ service in
                    Annotation(service.name, coordinate: service.coordinate){
                        Button(action: {
                            selectedLieux = service
                            showModal = true
                        }, label: {
                            
                            Image(service.imageName)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(50)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                                .foregroundStyle(.red)
                                .font(.largeTitle)
                        })
                    }
                    UserAnnotation()
                }
               
            } .cornerRadius(20.0)
           
//            .overlay(alignment: .top){
//                
//                TextField("Search", text:$searchText)
//                
//                    .font(.title3)
//                    .padding()
//                    .background(.white)
//                    .cornerRadius(50)
//                    .padding()
//                
//            }
            .navigationBarTitle("", displayMode: .inline)
        }
            .sheet(isPresented: $showModal) {
                if let sSelectedLieux = selectedLieux {
                    VStack(alignment: .leading) {
                        WebView(url: sSelectedLieux.link)
                        VStack{
                            Text(sSelectedLieux.adresse)
                            Text(sSelectedLieux.description)
                            Text(sSelectedLieux.name)
                        }
                        
                    }

                      .presentationDetents([.height(250.0), .large])
                      
                        
                }
                  
            } .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)

    }
}
#Preview {
    MapsViews()
}
