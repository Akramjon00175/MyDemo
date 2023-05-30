//
//  ContentView.swift
//  MyDemo
//
//  Created by Akramjon on 25/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            Text("Akramjon Muhammadov")
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Text("Home")
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        
                        Button(action: {
                            
                        }){
                            Image(systemName: "apple.logo")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading){
                        Button(action: {
                            
                        }){
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        }
                    }
                }
            
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
