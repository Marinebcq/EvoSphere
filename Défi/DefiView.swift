//
//  DefiView.swift
//  Application IOS
//
//  Created by Marine Bocquillion on 18/03/2024.
//

import SwiftUI



struct DefiView: View {
    
    
    
    
    @State  var date = Date()
    
    
    @State private var  defi : PlanetType = .confiance
    
    
    /*@State private var progress: Double = 0.0
     let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()*/
    
    var body: some View {
        ZStack { LinearGradient(gradient: Gradient(colors: [.fond, .fond2]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                
                
                //            NavigationView{
                
                Picker("", selection: $defi){
                    Text("Confiance en soi").tag(PlanetType.confiance)
                    Text("Hygiène de vie").tag(PlanetType.hygiene)
                    Text("Équilibre").tag(PlanetType.equilibre)
                }.pickerStyle(.segmented)
                    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                    .background(.fond2)
                    .cornerRadius(20.0)
                
                
                
                
                
                
                //            }
                
                VStack{
                    Text("\(formattedDate())")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding(70)
                        .shadow(color: .blue, radius: 10, x: 0, y: 0)
                      
                    
                    
                    ForEach(getDefisForPlanetType(pt: defi)){ defi in
                        
                        MyExtractedView(defi: defi)
                        
                    }
                    
                    
                }
                
            }
            .padding(.horizontal)
            .padding(.top)
            
        }
    }

    func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: date)
    }
    
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

}


#Preview {
    DefiView()
}

struct MyExtractedView: View {
    @State private var isPopupPresented = false
    
    var defi: Defi
    var body: some View {
        ZStack {
            
            Button(defi.title) {
                isPopupPresented = true
            }
            .padding()
            .frame(width: 220, height: 100)
            .background(.gray.opacity(0.1))
            .shadow(color: defi.color2, radius: 10, x: 0, y: 0)
            .border(Color.gray.opacity(0.1))
            .foregroundColor(.white)
            .cornerRadius(30)
            
            
            if isPopupPresented {
                PopupView(isPresented: $isPopupPresented, contentPopup: defi.content)
                    .overlay(
                        Color.black.opacity(0.1)
                            .onTapGesture {
                                isPopupPresented = false
                            }
                    )
            }
            
        }
    }
}
