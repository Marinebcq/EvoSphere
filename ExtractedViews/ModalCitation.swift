//
//  ModalCitation.swift
//  Application IOS
//
//  Created by apprenant47 on 15/03/2024.
//

import SwiftUI

struct ModalCitation: View {
    @State var presentSheet = false
    var planete : Planet
    var body: some View {
        
       
          
                Button("Citation du jour") {
                    presentSheet = true
                }  .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    .background(Color.black.cornerRadius(10))
                
                .sheet(isPresented: $presentSheet) {
                    Text(getCitationsForPlanetType(pt: planete.pt).randomElement()!.content)
                    //                .presentationDetents([.medium, .large])
                        .presentationDetents([.height(140.0), .large])
                }
            .foregroundColor(.black)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
        
        
        
        
        }
    }



#Preview {
    ModalCitation(planete: planeteC)
}

