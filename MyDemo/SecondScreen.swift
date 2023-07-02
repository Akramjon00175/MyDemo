//
//  SecondScreen.swift
//  MyDemo
//
//  Created by Akramjon on 19/06/23.
//

import SwiftUI

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
   
    var data = ""
    var delegate : BindingDelegate?
    
    
    var body: some View {
        NavigationStack{
            VStack {
                
                Button("Back to Home") {
                    
                    presentationMode.wrappedValue.dismiss()
                    delegate?.onReceived(value: "OML")
                    
                }
                
                Text("\(data)").padding()
            }
            .navigationBarTitle("Present", displayMode: .inline)
        }
    }
}

protocol BindingDelegate {
    
    func onReceived(value: String)
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
