//
//  LoginView.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        @State var email = ""
        @State var password = ""
        
        
        VStack {
            // Header
            HeaderView()
            
            // Loginform
            Form {
                TextField("Email Adress", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button {
                    // Attempt Login
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Log in")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                    
                }
                .padding()
            }
                
                // Create Account
                VStack {
                    Text("New around here?")
                    Button("Create Account") {
                        // Go to registration
                    }
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

