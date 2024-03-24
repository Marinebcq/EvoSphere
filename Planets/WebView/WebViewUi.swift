//
//  WebViewUi.swift
//  Application IOS
//
//  Created by apprenant47 on 14/03/2024.
//

import SwiftUI



struct WebViewUi: View {
    // 1
    @State private var isPresentWebView = false

    
    var body: some View {
        
        
        Button("Mental : 7 attitudes pour renforcer la confiance en soi") {
            // 2
            isPresentWebView = true

        }
        .sheet(isPresented: $isPresentWebView) {
            NavigationStack {
                // 3
                WebView(url: URL(string: "https://entrepreneurs.lesechos.fr/ma-vie/developpement-personnel/mental-7-attitudes-pour-renforcer-la-confiance-en-soi-2020193")!)
                    


                
                
//                    .navigationTitle("Slide on bottom")
//                    .navigationBarTitleDisplayMode(.inline)
            }.presentationDetents([.height(700.0), .large])
              
            
            
        }
        
        
    }
}



#Preview {
    WebViewUi()
}
