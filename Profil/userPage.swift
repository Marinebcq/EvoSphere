//
//  ContentView.swift
//  Application IOS
//
//  Created by Marine Bocquillion on 12/03/2024.
//

import SwiftUI


struct userPage: View {
    @State var username: String = ""
    @State var password: String = ""
    
    //var Userdetails : Details
    
    var body: some View {
        NavigationView{
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [.fond, .fond2]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                    
                VStack{
                    
                    Image(systemName:"person.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                    
                    Text("Inscription")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                        .foregroundColor(.white)
                        .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                    
                    
                    TextField(("Pseudo"), text: $username)
                        .padding()
                        .background(.white)
                        .cornerRadius(12)
                        .padding()
                        .foregroundColor(.white)
                    SecureField("Mot de passe", text: $password)
                        .padding()
                        .background(.white)
                        .cornerRadius(12)
                        .padding()
                        .foregroundColor(.white)
                    
                    
                    
                    
                    VStack{
                      

                            NavigationLink ("Connexion ici", destination: Userdetail())
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                    }
                        }
                    }
                }
            }
        }
        
    
    



#Preview {
    userPage()
}

