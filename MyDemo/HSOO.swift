//
//  HSOO.swift
//  MyDemo
//
//  Created by Akramjon on 03/07/23.
//

import SwiftUI

struct HSOO: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        
        NavigationStack {
            Button(action: {
                UserDefaults.standard.removeObject(forKey: "userid")
                status.listen()
            }){
                Text("Logout")
            }
            
            .navigationBarItems(leading: Image(systemName: "camera"),
                                trailing: Image(systemName: "location"))
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HSOO_Previews: PreviewProvider {
    static var previews: some View {
        HSOO()
    }
}
