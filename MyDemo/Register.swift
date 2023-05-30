//
//  Register.swift
//  MyDemo
//
//  Created by Akramjon on 30/05/23.
//

import SwiftUI

struct Register: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
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
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
