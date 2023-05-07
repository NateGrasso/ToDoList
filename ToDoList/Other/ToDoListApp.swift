//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Nathan Grasso on 5/7/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
