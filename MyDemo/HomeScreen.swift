//
//  HomeScreen.swift
//  MyDemo
//
//  Created by Akramjon on 19/06/23.
//

import SwiftUI

struct HomeScreen: View,BindingDelegate {
    
    func onReceived(value: String) {
        data = value
    }
    
    
    @State private var show = false
    @State private var data = "No Data"
    
    var body: some View {
        
        NavigationStack{
      
            VStack {
                
                Button(action: {
                    show = true
                }){
                    Text("Present Screen")
                }.sheet(isPresented: $show, content: {
                    SecondScreen(data: "PDP",delegate: self)
                })
                
                Text("\(data)").padding()
            }
            .navigationBarTitle("Home", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
