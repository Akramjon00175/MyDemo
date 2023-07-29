//
//  SignUp.swift
//  MyDemo
//
//  Created by Akramjon on 02/07/23.
//

import SwiftUI

struct SignUp: View {
    
    @Environment(\.presentationMode) var presentationMode
   
    @State var isShow = false
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var adress = ""
    @State var password = ""
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            TFB(title: "FirstName",text: firstName)
            TFB(title: "LastName",text: lastName)
            TFB(title: "Email",text: email)
            TFB(title: "Adress",text: adress)
            
            SecureField("Password",text: $password)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(20)
            
            Button(action:{
                
            }){
                HStack {
                    
                    Spacer()
                    Text("Sign Up")
                    Spacer()
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(20)
            }
            
            Spacer()
            
            HStack{
                
                Text("Already have an accoount ?")
                   
                Button(action: {
                   
                    presentationMode.wrappedValue.dismiss()
                }){
                    Text("Sign In")
                        .font(.system(size: 18))
                        .foregroundColor(.blue)
                        .bold()
                }
                
            }
            
        }.padding()
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

struct TFB: View {
    
    @State var title = ""
    @State var text  = ""
    
    var body: some View {
        
        VStack {
            
            TextField(title,text: $text)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(20)
            
        }
    }
    
}
