//
//  PlanerItemsView.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import SwiftUI

struct PlanerView: View {
    @StateObject var viewModel = PlanerViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Planer")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
    }
}

struct PlanerView_Previews: PreviewProvider {
    static var previews: some View {
        PlanerView(userId: "")
    }
}
