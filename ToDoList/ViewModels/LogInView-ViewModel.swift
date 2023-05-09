//
//  LogInView-ViewModel.swift
//  ToDoList
//
//  Created by Nathan Grasso on 5/7/23.
//
import FirebaseAuth
import Foundation

class LogInViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(){
        guard validate() else{
            return
        }
        
        //Try to log in
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool{
        //validate user has entered a valid email and if the user has entered a password
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            
            errorMessage="Please fill in all fields."
            return false
        }
        
        //basic validation of email, will make more advanced later 5/9/2023
        guard email.contains("@") && email.contains(".")else{
            errorMessage="Please enter a valid email."
            return false
        }
        
        return true
    }
}
