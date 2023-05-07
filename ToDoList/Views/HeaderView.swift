//
//  HeaderView.swift
//  ToDoList
//
//  Created by Nathan Grasso on 5/7/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.purple)
                .rotationEffect(Angle(degrees: 15))
            
            VStack{
                Text("Hella Productive")
                    .font(.system(size:50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text("Lets get it done")
                    .font(.system(size:30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width*3,
               height: 300)
        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
