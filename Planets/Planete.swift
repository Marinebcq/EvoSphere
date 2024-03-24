//
//  Planete.swift
//  StudentsTeaching
//
//  Created by apprenant47 on 11/03/2024.
//

import SwiftUI




struct Planete: View {
    
  
   
    
    var body: some View {
        
    
        
        NavigationStack {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.fond, .fond2]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .ignoresSafeArea()
                
                VStack(spacing: 40) {
                
                    Text("EvoSphere")
                        .font(.custom("Futura-Medium", size: 68, relativeTo: .largeTitle))
                        .foregroundStyle(.white)
                        .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                      
                HStack(spacing: -10) {
                    
                    ForEach(planetes) { planet in
                        NavigationLink(destination: PlaneteDetails(planete: planet),
                                       label: {
                            VStack {
                                Image(planet.image)
                                    .resizable()
                                    .frame(width: 135, height: 135)
                                    .shadow(color: planet.color2, radius: 10, x: 0, y: 0)
                                
                                    .padding(.bottom)
                                Text(planet.name)
                                    .foregroundStyle(planet.color2)
                                    .shadow(color: planet.color2, radius: 10, x: 0, y: 0)
                                    .font(.custom("Optima-ExtraBlack", size: 18))
                                    .padding(.horizontal)
                                
                            }
                            
                        })
                    }
                    
                    
                }
                 
                    
                    
                    Text("Choisissez votre planète")
                        .font(.custom("Optima-ExtraBlack", size: 28))
                        .foregroundStyle(.white)
                        .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                    
            }
            }
            

            
            
            
            
            
            
            
            
            
            
            
            
            .navigationBarTitle("", displayMode: .inline)
            .tint(.white)
            
    }
    
        
        
    
    }
}

#Preview {
    Planete()
}
