//
//  LogInView.swift
//  ToDoList
//
//  Created by Nathan Grasso on 5/7/23.
//

import SwiftUI

struct LogInView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView()
                
                //Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        //attempt log in
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                        .padding()
                    }
                }
                
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
