//
//  PlanerViewViewModel.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import FirebaseFirestore
import Foundation

class PlanerViewViewModel: ObservableObject {
    @Published var showingNewItem = false
    
    private let userId: String
    
    init (userId: String) {
        self.userId = userId
    }
    
    
    /// Delete PlaningsItem
    /// - Parameter id: Item id to dekete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("planings")
            .document(id)
            .delete()
    }
}
