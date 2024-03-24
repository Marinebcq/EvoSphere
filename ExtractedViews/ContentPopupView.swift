//
//  ContentPopupView.swift
//  Application IOS
//
//  Created by apprenant47 on 19/03/2024.
//

import SwiftUI

struct ContentPopupView: View {
    @State private var isPopupPresented = false
    
    var body: some View {
        ZStack {
        
            Button("Défi") {
                self.isPopupPresented = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            
            if isPopupPresented {
                PopupView(isPresented: $isPopupPresented, contentPopup: "Contenu du défi")
                    .frame(width: 200, height: 100)
                    .overlay(
                        Color.white.opacity(0.3)
                            .onTapGesture {
                                self.isPopupPresented = false
                            }
                    )
            }
        
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentPopupView()
    }
}

