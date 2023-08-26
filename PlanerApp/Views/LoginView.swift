//
//  LoginView.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "PlanerApp", subtitle: "App for Planing", degree: 15, background: .pink)
            
            // Loginform
            
            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                }
                
                TextField("Email Adress", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                SecureField("Password", text:$viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                ButtonView(background: .blue, title: "Log In", action: {
                    viewModel.login()
                })
                .padding()
            }
            .offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create Account", destination: RegisterView()) 
                }
                .padding(.bottom, 50)
                
                
                Spacer()
            }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

