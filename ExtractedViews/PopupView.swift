//
//  PopupView.swift
//  Application IOS
//
//  Created by apprenant47 on 19/03/2024.
//

import SwiftUI

struct PopupView: View {
    @Binding var isPresented: Bool
    var contentPopup : String
    
    var body: some View {
        VStack {
            Text(contentPopup)
                .foregroundStyle(.black)
                .frame(width: 220 , height: 80)
          
            
        }
        .padding(20)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 5)
    }
}


