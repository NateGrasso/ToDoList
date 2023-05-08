//
//  LogInView.swift
//  ToDoList
//
//  Created by Nathan Grasso on 5/7/23.
//

import SwiftUI

struct LogInView: View {
    @StateObject var viewModel = LogInViewViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Let's get it done", angle: 15, background: .purple)
                
                //Login Form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Log In",
                             background: .blue
                    ) {
                        //Attempt login
                    }
                    .padding()
                }
                .offset(y: -50)
                
                //Create Account
                VStack{
                    Text("Dont have an account?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
