//
//  SIP.swift
//  MyDemo
//
//  Created by Akramjon on 02/07/23.
//

import SwiftUI

struct SIP: View {
    
    @EnvironmentObject var status: Status
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Spacer()
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150,height: 150)
                
                TextField("User ID", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(20)
                
                SecureField("User PW", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(20)
                
                Button(action: {
                    UserDefaults.standard.set("pdp", forKey: "userid")
                    status.listen()
                }) {
                    HStack {
                        Spacer()
                        Text("Sign In")
                        Spacer()
                    } .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                
                Spacer()
                
                HStack {
                    
                    Text("Don't have an account")
                    NavigationLink(destination: SUP()) {
                        Text("Sign Up")
                            .font(.system(size: 18))
                            .foregroundColor(.blue)
                            .bold()
                    }
                    
                }
            }.padding()
                .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct SIP_Previews: PreviewProvider {
    static var previews: some View {
        SIP()
    }
}
