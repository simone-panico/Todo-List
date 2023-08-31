//
//  PlanerItem.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import Foundation

struct PlanerItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
