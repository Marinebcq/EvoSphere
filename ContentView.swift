//
//  ContentView.swift
//  StudentsTeaching
//
//  Created by apprenant47 on 11/03/2024.
//



import SwiftUI


enum TabbedItems: Int, CaseIterable{
    case planete = 0
    case defi
    case map
    case profil
    
    var title: String{
        switch self {
        case .planete:
            return "Planètes"
        case .defi:
            return "Défi Quotidien"
        case .map:
            return "Maps"
        case .profil:
            return "Profil"
        }
    }
    
    var iconName: String{
        switch self {
        case .planete:
            return "planete-icon"
        case .defi:
            return "defi-icon"
        case .map:
            return "map-icon"
        case .profil:
            return "profil-icon"
        }
    }
}

struct ContentView: View {
    
    @State var selectedTab = 0
    
      
    var body: some View {
        
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab) {
                Planete()
                    .tag(0)

                DefiView()
                    .tag(1) 
                
                MapsViews()
                    .tag(2)

                Userdetail()
                    .tag(3)
            }

            ZStack{
                HStack{
                    ForEach((TabbedItems.allCases), id: \.self){ item in
                        Button{
                            selectedTab = item.rawValue
                        } label: {
                            CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                        }
                    }
                }
                .padding(6)
            }
            .frame(height: 70)
            .background(.gray.opacity(0.20))
            .cornerRadius(25)
            .padding(.horizontal, 26)
        }
    }
}

extension ContentView{
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
        HStack(spacing: 10){
            Spacer()
            Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .tabBlue : .gray.opacity(0.7))
                .shadow(color: isActive ? Color.white : Color.clear,
                              radius: isActive ? 10 : 0, x: 0,y: 0)
                .frame(width: 25, height: 25)
            if isActive{
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(isActive ? .tabBlue : .white.opacity(0.3))
                    .shadow(color: .white, radius: 10, x: 0, y: 0)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity : 60, height: 60)
        .background(isActive ? .black.opacity(0.4) : .clear)
        .cornerRadius(30)
    }
}

#Preview {
    ContentView()
}




































