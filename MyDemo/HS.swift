//
//  HS.swift
//  MyDemo
//
//  Created by Akramjon on 03/07/23.
//

import SwiftUI

struct HS: View {
    
    
    
    var body: some View {
        
        NavigationStack {
            
            Button(action:{
                UserDefaults.standard.set(false , forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }){
                Text("Logout")
            }
            .navigationBarItems(leading: Image(systemName: "camera"),
                                trailing: Image(systemName: "location"))
            .navigationBarTitle("Instagaram",
                                displayMode: .inline)
        }
    }
}

struct HS_Previews: PreviewProvider {
    static var previews: some View {
        HS()
    }
}
