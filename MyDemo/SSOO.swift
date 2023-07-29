//
//  SSOO.swift
//  MyDemo
//
//  Created by Akramjon on 03/07/23.
//

import SwiftUI

struct SSOO: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        
        VStack {
            
            if self.status.userid != nil {
                HSOO()
            }else{
                SIP()
            }
            
        }
        .onAppear {
            status.listen()
        }
    }
}

struct SSOO_Previews: PreviewProvider {
    static var previews: some View {
        SSOO()
    }
}
