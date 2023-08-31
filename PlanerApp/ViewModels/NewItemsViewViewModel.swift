//
//  NewItemsViewViewModel.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import FirebaseAuth
import FirebaseFirestore

import Foundation

class NewItemsViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init () {}
    
    func save() {
        guard canSave else {
            return
        }
        
        // Get current UserID
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        // Create Model
        let newId = UUID().uuidString
        let newItem = PlanerItem(id: newId, title: title, dueDate: dueDate.timeIntervalSince1970, createDate: Date().timeIntervalSince1970, isDone: false)
        
        
        // Save Model
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("planings")
            .document(newId)
            .setData(newItem.asDictionary())
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
