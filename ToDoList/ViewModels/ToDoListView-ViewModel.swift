//
//  ToDoListView-ViewModel.swift
//  ToDoList
//
//  Created by Nathan Grasso on 5/7/23.
//

import Foundation

//ViewModel for list of items view
//Primary tab
class ToDoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
