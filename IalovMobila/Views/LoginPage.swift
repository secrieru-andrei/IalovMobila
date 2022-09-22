//
//  Login.swift
//  IalovMobila
//
//  Created by Secrieru Andrei on 21.09.2022.
//

import SwiftUI

struct LoginForm: View {
    @Environment (\.dismiss) var dismiss
    @Binding var loginEmail: String
    @Binding var password: String
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack{
                    Spacer(minLength: 150)
                    VStack{
                        
                        TextField("Email Address", text: $loginEmail)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                         
                        SecureField("Password", text:  $password)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        Button {
                            
                        } label: {
                            Text("Forgot Password?")
                        }.frame(alignment: .leading)
                    }
                    .padding(.trailing)
                    .padding(.leading)
                    VStack{
                        
                        Button {
                            
                        } label: {
                            Text("Login")
                                .foregroundColor(.primary)
                                .font(.custom("Avenir Next", size: 17, relativeTo: .headline))
                                .bold()
                                .padding()
                                .frame(width: 150, height: 50)
                        }
                        .background(Color.init("lightBlue"))
                        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke(Color.white,lineWidth: 1))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding()
                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                    }
                
                    HStack {
                        Rectangle()
                            .frame(height: 1)
                            .border(Color.black)
                        Text("or login with")
                            .foregroundColor(.black)
                            .font(.custom("Avenir Next", size: 16, relativeTo: .headline))
                        
                        Rectangle()
                            .frame(height: 1)
                            .border(Color.black)
                    }
                    .padding()
                    
                    HStack(spacing: 20) {
                        Button {
                            
                        } label: {
                            Image("apple")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 24, height: 24)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }.padding()
                        
                        Button {
                            
                        } label: {
                            Image("fb")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 24, height: 24)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }.padding()
                        
                        Button {
                            
                        } label: {
                            Image("google")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 24, height: 24)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        .padding()
                    }
                    .padding()
                }
            }
            .navigationTitle("Welcome back!")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.backward")
                    }
                }
                
            }
        }
    }
}

struct RegisterForm: View {
    @Binding var loginEmail: String
    @Binding var loginPass: String
    @Binding var passConf: String
    @Environment (\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack{
                    Spacer(minLength: 150)
                    VStack{
                        
                        TextField("Email Address", text: $loginEmail)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        SecureField("Password", text:  $loginPass)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        SecureField("Confirm Password", text:  $passConf)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                    }
                    .padding(.trailing)
                    .padding(.leading)
                    VStack{
                        
                        Button {
                            
                        } label: {
                            Text("Register")
                                .foregroundColor(.primary)
                                .font(.custom("Avenir Next", size: 17, relativeTo: .headline))
                                .bold()
                                .padding()
                                .frame(width: 150, height: 50)
                        }
                        .background(Color.init("lightBlue"))
                        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke(Color.white,lineWidth: 1))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.top)
                        .shadow(color: .black, radius: 1, x: 1, y: 1)
      
                    }
                    
                    HStack {
                        Rectangle()
                            .frame(height: 1)
                            .border(Color.black)
                        Text("or sing up with")
                            .foregroundColor(.black)
                            .font(.custom("Avenir Next", size: 16, relativeTo: .headline))
                        
                        Rectangle()
                            .frame(height: 1)
                            .border(Color.black)
                    }
                    .padding()
                    
                    HStack(spacing: 20) {
                        Button {
                            
                        } label: {
                            Image("apple")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 24, height: 24)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }.padding()
                        
                        Button {
                            
                        } label: {
                            Image("fb")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 24, height: 24)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }.padding()
                        
                        Button {
                            
                        } label: {
                            Image("google")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 24, height: 24)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        .padding()
                        
                    }
                    .padding()
                }
            }
            .navigationTitle("Create Account!")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.backward")
                    }
                }
                
            }
        }
    }
}

struct LoginPage: View {
    @State private var loginEmail = ""
    @State private var password = ""
    @State private var passConf = ""
    @State private var showLoginForm = false
    @State private var showRegisterForm = false
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            //Logo
            VStack {
                
                VStack {
                    Image("loginLogo2")
                        .resizable()
                        .padding()
                        .aspectRatio(contentMode: .fit)
                    
                    
                    Text("IalovMobila")
                        .foregroundColor(.black)
                        .font(.custom("Avenir Next", size: 30))
                        .bold()
                        .shadow(color: .gray, radius: 1, x: 1, y: 1)
                    Text("comfort in your home")
                        .italic()
                        .foregroundColor(.black)
                        .font(.custom("Avenir Next", size: 17))
                }
                .padding()
                
                
                //Buttons
                Spacer()
                VStack {
                    HStack(spacing:15) {
                        Button(action: {
                            showLoginForm = true
                        }) {
                            Text("Sing In")
                                .bold()
                                .foregroundColor(.primary)
                                .padding()
                                .font(.custom("Avenir Next", size: 17, relativeTo: .title3))
                            
                        }
                        .frame(width: 150, height: 50, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(.white), lineWidth: 1))
                        .background(Color.init("lightBlue"))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                        
                        .sheet(isPresented: $showLoginForm) {
                            LoginForm(loginEmail: $loginEmail, password: $password )
                            
                        }
                        
                        Spacer()
                        
                        Button {
                            showRegisterForm = true
                        } label: {
                            Text("Sing Up")
                                .foregroundColor(.primary)
                                .bold()
                                .padding()
                                .font(.custom("Avenir Next", size: 17, relativeTo: .headline))
                        }
                        .frame(width: 150, height: 50, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(.white), lineWidth: 1))
                        .background(Color.init("lightBlue"))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                    }.padding()
                        .sheet(isPresented: $showRegisterForm) {
                            RegisterForm(loginEmail: $loginEmail, loginPass: $password, passConf: $passConf)
                        }
                }
                Button {
                    
                } label: {
                    Text("Continue as a guest")
                    
                }.padding()
                
            }         
        }
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
