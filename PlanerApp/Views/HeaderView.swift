//
//  HeaderView.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let degree: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: degree))
            
            VStack {
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 40))
                
                Text(subtitle)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
            }
            .padding(.top, 30)
        }
        .offset(y: -150)
        .frame(width: UIScreen.main.bounds.width * 3,
                height: 350)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title",
                   subtitle: "SubTitle",
                   degree: 15,
                   background: .blue)
    }
}
