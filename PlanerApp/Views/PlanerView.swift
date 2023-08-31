//
//  PlanerItemsView.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//


import FirebaseFirestoreSwift
import SwiftUI

struct PlanerView: View {
    @StateObject var viewModel: PlanerViewViewModel
    @FirestoreQuery var items: [PlanerItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/planings")
        self._viewModel = StateObject(wrappedValue: PlanerViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    PlanerItemView(item: item)
                        .swipeActions {
                            Button {
                                viewModel.delete(id: item.id)
                            } label: {
                                Text("Delete")
                                    
                            }
                            .tint(.red)

                        }
                }
                .listStyle(.insetGrouped)
            } 
            .navigationTitle("Planer")
            .toolbar {
                Button {
                    viewModel.showingNewItem = true
                }
                    label: {
                    Image(systemName: "plus")
                }
                

            }
            
            
            .sheet(isPresented: $viewModel.showingNewItem) {
                NewItemsView(newItemPresented: $viewModel.showingNewItem)
            }
        }
    }
}

struct PlanerView_Previews: PreviewProvider {
    static var previews: some View {
        PlanerView(userId: "E46FE9DF-9C83-40A0-A1C7-DFEEE6853649")
    }
}
