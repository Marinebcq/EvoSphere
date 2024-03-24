//
//  Userdetail.swift
//  Application IOS
//
//  Created by Marine Bocquillion on 12/03/2024.
//

import SwiftUI
import Charts


struct Userdetail: View {
    
    @State private var isAnimation = false
    
    @State private var switchToggle = false
    @State private var buttonToggle = true
    @State private var EmailOff = false
    @State private var EmailOn = true
    
    var angle: Double = 20
    var pieData = [
        PieChartData(day: "Taa", hours: 5, type:"nap", color: .pink),
        PieChartData(day: "Mon", hours: 8, type: "dmd",color: .cyan),
        PieChartData(day:"Tue" , hours: 4, type:"xxx", color: .orange)]
    
    var colorData : [Color] = [   Color(red: 0.6784, green: 0, blue: 0.1804),
                                  Color(red: 0.1804, green: 0.9686, blue: 0.5961),
                                  Color(red: 0, green: 0.8471, blue: 0.9765)]
    
      
    
    var prenom = "Marine"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView (showsIndicators: false ){
                
                
                
                ZStack {
                    
                    LinearGradient(gradient: Gradient(colors: [.fond, .fond2]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing)
                            .ignoresSafeArea()
                        
                    
                    
                    Rectangle()
                    
                        .fill( LinearGradient(gradient: Gradient(colors: [.white.opacity(0.1), .fond2]),
                                              startPoint: .topLeading,
                                              endPoint: .bottomTrailing)
                               
                           
                        )
                    
                        .cornerRadius(50)
                        .frame(width: 395, height: 950)
                        .padding(.top,230)
                    
                    
                    
                    
                        .ignoresSafeArea()
                    
                    VStack (alignment: .center) {
                        Text("Bonjour \(prenom)")
                            .frame(height: 200)
//                            .foregroundStyle(.linearGradient(colors: [.purple
//                                                                      , .green,],
//                                                             startPoint: .topLeading, endPoint: .trailing))
                            .font(.custom("Futura-Medium", size: 40))
                            .foregroundStyle(.white)
                            .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                        
                         
                            .padding(.top, -10)
                        
                        
                        
                        VStack(alignment: .leading) { // MES INFOS + infos
                            HStack{
                                Image(systemName: "person.fill")
                                    .foregroundStyle(.white)
                                    .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                                 
                                Text ("Mes infos")
                                    .padding()
                                    .foregroundStyle(.white)
                                    .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                                    .bold()
                                    .foregroundColor(.black)
                            }
                            VStack(alignment:.leading){
                                HStack{
                                    
                                    
                                    
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                    
                                    Text("Inscription le 15/03/2024")}
                                
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                    Text("Nom : Bocquillion")}
                                
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                    
                                    Text("Prénom : Marine")} 
                                
                            }  .foregroundStyle(.white)
                                .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                        }
                        .foregroundColor(.black)
                                        
                        .padding(.bottom, 30)
                     
                            VStack{
                                Chart{
                                    
                                    ForEach(pieData) { d in
                                        
                                        SectorMark(angle:
                                                .value("hours", d.hours),
                                                   innerRadius: .ratio(0.9),
                                                   angularInset: 5)
                                        
                                        
                                        
                                        .foregroundStyle(by: .value("day",d.day))
                                        .cornerRadius(9)
                                     
                                        
                                        
                                    }
                                } 
                                .chartForegroundStyleScale(domain: pieData.map {$0.day} , range: colorData)
                                
                                
                                .rotationEffect(Angle(degrees: isAnimation ? 360 : 0 ))
                                    .animation(Animation.linear(duration: 5)
                                        .repeatForever(autoreverses: true), value: UUID())
                                    .onAppear{
                                        self.isAnimation = true
                                    }
                                    .frame(width: 150, height: 300)
                                
                            
                                
                                    .chartLegend(.hidden)
                            } // chart
                            .padding()
                        
                        VStack (alignment: .leading) {
                            
                            HStack{
                                Image(systemName: "sun.and.horizon.fill")
                                    .foregroundColor(.white)
                                
                                Text("Mes progrès")
                                
                                    .padding(.bottom)
                                    .font( .custom ("HelveticaNeue-CondensedBlack", size:30))
                                    .bold()
                                    .foregroundStyle(.white)
                                        .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                            }}
                        VStack(alignment: .leading) {
                            
                            HStack (alignment: .center) {
                                
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .foregroundStyle(.white)
                                        .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                                Text("Vous vous êtes entrainée le 10/03/2024")
                                
                                    .foregroundStyle(.white)
                                        .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                                .padding(.bottom, 10)}
                            HStack{
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .foregroundStyle(.white)
                                        .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                                Text("Vous avez validé  première planète le 12/03/2024, BRAVO ! ")
                                } .foregroundStyle(.white)
                                .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                            
                            
                            
                            
                            Toggle("Notifications", isOn: $buttonToggle)
                                .frame(width: 300, height: 20)
                                .toggleStyle(.switch)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                    .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            
                            Toggle("Recevoir les emails", isOn: $EmailOn)
                                .frame(width: 300, height: 20)
                                .toggleStyle(.switch)
                                .padding(.top, 50)
                                .foregroundStyle(.white)
                                    .shadow(color: .tabBlue, radius: 10, x: 0, y: 0)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            
                        }
                        
                    }
                    Spacer()
                        
                    
                }
                
                
                
            } .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            
        }
        
    }
    
    
    
}
#Preview {
    Userdetail()
}
