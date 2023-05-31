//
//  scroll.swift
//  MyDemo
//
//  Created by Akramjon on 31/05/23.
//

import SwiftUI

struct scroll: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        ScrollView {
            
            Group {
                VStack(alignment: .leading){
                    Text("FirstName")
                       // .padding()
                    TextField("FirstName", text: $email)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                       
                    Text("LastName")
                       // .padding()
                    SecureField("LastName", text: $password)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        
                    Text("Email")
                       // .padding()
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                    
                    VStack(alignment: .leading) {
                        Text("Phone")
                        
                        // .padding()
                        TextField("Phone", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                        
                        Text("SMS")
                        // .padding()
                        TextField("SMS", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                        
                        Text("Adress1")
                        // .padding()
                        TextField("Adress1", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                        
                        Text("Adress2")
                        // .padding()
                        TextField("Adress2", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                        Text("ZipCode")
                        // .padding()
                        TextField("ZipCode", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                    }
                }.padding(.horizontal)
            }
            
        }
       
    }
}

struct scroll_Previews: PreviewProvider {
    static var previews: some View {
        scroll()
    }
}
