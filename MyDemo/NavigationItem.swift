//
//  NavigationItem.swift
//  MyDemo
//
//  Created by Akramjon on 30/05/23.
//

import SwiftUI

struct NavigationItem: View {
    var body: some View {
        
        NavigationView {
            
            Text("Akramjon Muhammdov")
            
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Text("Home")
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: {}){
                            Image(systemName: "apple.logo")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading){
                        Button(action: {}){
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        }
                    }

                }
            
        }
        
    }
}

struct NavigationItem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationItem()
    }
}
