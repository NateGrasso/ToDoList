//
//  ContentView.swift
//  ToDoList
//
//  Created by Nathan Grasso on 5/7/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, viewModel.currentUserId.isEmpty{
            // signed in
            ToDoListView()
        } else{
            LogInView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
