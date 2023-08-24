//
//  HeaderView.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("Planing App")
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 40))
                
                Text("Get things done!")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
            }
            .padding(.top, 30)
        }
        .offset(y: -100)
        .frame(width: UIScreen.main.bounds.width * 3,
                height: 300)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
