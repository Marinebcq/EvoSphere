//
//  MonYoutubePlayer.swift
//  Application IOS
//
//  Created by apprenant47 on 15/03/2024.
//

import SwiftUI

import YouTubePlayerKit



struct MonYoutubePlayer: View {
    @StateObject
    var url: YouTubePlayer = ""
    
    

    var body: some View {
        
       HStack(spacing: 50){
            //  WWDC 2019 Keynote
        
            YouTubePlayerView(url)
               
            
       }
      .frame(width: 360, height:310)
           .cornerRadius(20.0)
          
    }

}

#Preview {
    MonYoutubePlayer(url: "https://youtube.com/watch?v=psL_5RIBqnY")
}

