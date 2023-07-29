//
//  StarterScreen.swift
//  MyDemo
//
//  Created by Akramjon on 03/07/23.
//

import SwiftUI

struct SS: View {
    
    @State var status = UserDefaults.standard.value(forKey: "status")as? Bool ?? false
    
    var body: some View {
        
        VStack {
            if self.status {
                HS()
            }else{
                SignIn()
            }
            
        }
        .onAppear{
            let forName = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: forName, object: nil, queue: .main) { (_) in
                print("Call Natification Center")
                self.status = UserDefaults.standard.value(forKey: "status")as? Bool ?? false
                
            }
        }
    }
}

struct SS_Previews: PreviewProvider {
    static var previews: some View {
        SS()
    }
}
