//
//  ButtonView.swift
//  PlanerApp
//
//  Created by Simone Panico on 26.08.23.
//

import SwiftUI

struct ButtonView: View {
    let background: Color
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(background: .blue, title: "Value") {
            //Action
        }
    }
}
