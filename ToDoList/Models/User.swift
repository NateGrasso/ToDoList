//
//  User.swift
//  ToDoList
//
//  Created by Nathan Grasso on 5/7/23.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
