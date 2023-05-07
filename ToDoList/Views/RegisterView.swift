//
//  RegisterView.swift
//  ToDoList
//
//  Created by Nathan Grasso on 5/7/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register", subtitle: "Start being productive", angle: -15, background: .pink)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
