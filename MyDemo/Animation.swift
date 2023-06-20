//
//  Animation.swift
//  MyDemo
//
//  Created by Akramjon on 20/06/23.
//

import SwiftUI

struct Animation: View {
    
    @State private var half = false
    @State private var dim = false
    
    var body: some View {
        
        VStack {
            
            Image("tower")
            
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400,height: 400)
                .scaleEffect(half ? 0.5 : 1.0)
                .opacity(dim ? 0.2 : 0.1)
                .animation(.easeInOut(duration: 1.0))
            
                .onTapGesture( ){
                    self.half.toggle()
                    self.dim.toggle()
                }
        }
        
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        Animation()
    }
}
