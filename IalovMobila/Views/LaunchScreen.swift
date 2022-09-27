//
//  LaunchScreen.swift
//  IalovMobila
//
//  Created by Secrieru Andrei on 21.09.2022.
//

import SwiftUI

struct LaunchScreen: View {
    @State var isActive = false
    @State var scale = 0.7
    @State var opacity = 0.2
    
    var body: some View {
        if isActive {
            LoginPage()
        }
        else {
            ZStack{
                Color.white
                    .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "house.fill")
                        .foregroundColor(.black)
                        .font(.system(size: 100))
                        .foregroundColor(.black)
                        .padding()
                    Text("IalovMobila")
                        .foregroundColor(.init("lightBlue"))
                        .font(.custom("Avenir Next", size: 30))
                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                }
                .scaleEffect(scale)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeInOut(duration: 2)){
                        self.scale = 1
                        self.opacity = 1
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                    withAnimation(.easeIn(duration: 0.5)){
                        self.isActive = true
                    }
                }
            }
            
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
