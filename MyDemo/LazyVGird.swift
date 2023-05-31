//
//  LazyVGird.swift
//  MyDemo
//
//  Created by Akramjon on 31/05/23.
//

import SwiftUI

extension UIScreen {
    
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let size = UIScreen.main.bounds.size
}

struct LazyVGird: View {
    
    var columns: [GridItem] = Array(repeating: .init(.fixed(UIScreen.width/2)), count: 2)
    
    
    var body: some View {
        ScrollView {
            
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(0...100, id: \.self){ index in
                    VStack(spacing: 0){
                        Image("apple")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Text("Title \(index)")
                            .frame(width: UIScreen.width/2,height: 50)
                            .background(Color.gray)
                        
                    }
                    
                }
            }
            
        }
        
    }
}

struct LazyVGird_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGird()
    }
}
