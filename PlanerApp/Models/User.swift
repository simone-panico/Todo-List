//
//  User.swift
//  PlanerApp
//
//  Created by Simone Panico on 24.08.23.
//

import Foundation
struct User: Codable {
    let id: String
    let email: String
    let name: String
    let joined: TimeInterval
}
