//
//  ZStackView.swift
//  MyDemo
//
//  Created by Akramjon on 30/05/23.
//

import SwiftUI

struct ZStackView: View {
    @State var email = ""
    @State var password = ""
    @State var progress = 0.5
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Text("Email")
                   // .padding()
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                   
                Text("Password")
                   // .padding()
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    
                
            }.padding(.horizontal)
            VStack {
                ProgressView()
                Text("Loading")
            }
           
            
        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
