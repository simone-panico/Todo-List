//
//  RegisterView.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start your Planer", degree: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Adress", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                ButtonView(background: .blue, title: "Register") {
                    // Attempt Register
                }
                .padding()
            }
            .offset(y: -50)
            
            
            Spacer()

        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
