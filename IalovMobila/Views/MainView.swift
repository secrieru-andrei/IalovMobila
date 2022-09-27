//
//  MainView.swift
//  IalovMobila
//
//  Created by Secrieru Andrei on 22.09.2022.
//

import SwiftUI

struct MainView: View {
    @StateObject private var loginViewModel = LoginViewModel()
    
    var body: some View {
        
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            Text("Second View")
                .tabItem {
                    Image(systemName: "envelope")
                }
            
            SectionsView()
                .tabItem{
                    Image(systemName: "square")
                }
            
        }
        .onAppear{
            UITabBar.appearance().barTintColor = .gray
            
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
