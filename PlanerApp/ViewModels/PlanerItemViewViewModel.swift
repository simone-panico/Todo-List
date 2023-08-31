//
//  PlanerItemViewViewModel.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation


class PlanerItemViewViewModel: ObservableObject {
    init () {}
    
    func toggleIsDone(item: PlanerItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("planings")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
