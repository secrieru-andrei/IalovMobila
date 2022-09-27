//
//  Login.swift
//  IalovMobila
//
//  Created by Secrieru Andrei on 21.09.2022.
//

import SwiftUI

struct LoginForm: View {
    @Environment (\.dismiss) var dismiss
    @ObservedObject var viewModel: LoginViewModel
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    Spacer(minLength: 150)
                    VStack{
                        
                        TextField("Email Address", text: $viewModel.email)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        SecureField("Password", text:  $viewModel.password)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        if viewModel.errorHandler != nil {
                            if let error = viewModel.errorHandler{
                                Text(error)
                                    .foregroundColor(.red)
                                    .lineLimit(2)
                                
                            }
                        }
       
                        Button {
                            
                        } label: {
                            Text("Forgot Password?")
                        }
                    }
                    .padding(.trailing)
                    .padding(.leading)
                    VStack{
                        
                        Button {
                            viewModel.signIn(withEmail: viewModel.email,
                                             withPassword: viewModel.password)
                            
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
    @ObservedObject var viewModel = LoginViewModel()
    @Environment (\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    Spacer(minLength: 150)
                    VStack{
                        
                        TextField("Email Address", text: $viewModel.email)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        SecureField("Password", text:  $viewModel.password)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        SecureField("Confirm Password", text:  $viewModel.passConfirmation)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.init("lightBlue"), lineWidth: 1)
                                .shadow(color: .gray, radius: 2, x: 1, y: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        if viewModel.errorHandler != nil {
                            if let error = viewModel.errorHandler{
                                Text(error)
                                    .foregroundColor(.red)
                                    .lineLimit(2)
                            }
                        }
                        
                    }
                    .padding(.trailing)
                    .padding(.leading)
                    VStack{
                        
                        Button {
                            
                            viewModel.signUp(withEmail: viewModel.email,
                                             withPassword: viewModel.password,
                                             withPassConfirmation: viewModel.passConfirmation)
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

// Main login page view witch include: logo, company name, slogan, buttons for singin or singup
struct LoginPage: View {
    //Proprietes
    @StateObject var viewModel = LoginViewModel()
    @State  var status = UserDefaults.standard.value(forKey: "isLogedIn") as? Bool ?? false
    var body: some View {
        if status {
            MainView()
        } else {
            
            ZStack {
                Color.white.ignoresSafeArea()
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
                                viewModel.Clear()
                                viewModel.showLoginForm = true
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
                            
                            .sheet(isPresented: $viewModel.showLoginForm) {
                                LoginForm(viewModel: viewModel)
                                
                            }
                            
                            Spacer()
                            
                            Button {
                                viewModel.Clear()
                                viewModel.showRegisterForm = true
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
                            .sheet(isPresented: $viewModel.showRegisterForm) {
                                RegisterForm(viewModel: viewModel)
                            }
                    }
                    Button {
                        
                    } label: {
                        Text("Continue as a guest")
                        
                    }.padding()
                    
                }       
            }
            .onAppear{
                NotificationCenter.default.addObserver(forName: Notification.Name("isLogedIn"), object: nil, queue: .main) { (_) in
                    
                    self.status = UserDefaults.standard.value(forKey: "isLogedIn") as? Bool ?? false
                }
            }
        }
    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
