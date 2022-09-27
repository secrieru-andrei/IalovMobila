//
//  HomeView.swift
//  IalovMobila
//
//  Created by Secrieru Andrei on 27.09.2022.
//

import SwiftUI

struct HomeView: View {
    @State private var popArray = ["Logout"]
    @State private var ShowPop = false
    @StateObject var logout = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                Text("News List will be displayed here")
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Menu {
                        Button {
                            logout.signOut()
                            
                        } label: {
                            VStack{
                                Text("Logout")
                                Image(systemName: "power")
                            }
                        }
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
