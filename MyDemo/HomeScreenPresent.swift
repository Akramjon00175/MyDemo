//
//  HomeScreenPresent.swift
//  MyDemo
//
//  Created by Akramjon on 05/06/23.
//

import SwiftUI

struct HomeScreenPresent: View {
    
    @Environment(\.presentationMode) var presentationMode
    var data: String = ""
    var delegate = BindingDelegate?.self
    var body: some View {
       
        VStack{
            Button(action: {
               // delegate.onReceived(value: "Online")
                presentationMode.wrappedValue.dismiss()
            }){
                Text("Back to Home")
            }
            Text(data).padding()
        }
        .navigationBarTitle("Present",displayMode: .inline)
    }
}

struct HomeScreenPresent_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenPresent()
    }
}
protocol BindingDelegate {
    func onReseived(value: String)
}
