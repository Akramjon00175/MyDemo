//
//  M5Task4.1.swift
//  MyDemo
//
//  Created by Akramjon on 05/06/23.
//

import SwiftUI

struct M5Task4_1: View {
    var body: some View {
        NavigationView{
            ScrollView {
               Image("car1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
               Image("car2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
               Image("car3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }.padding(.horizontal)
            
            .navigationBarItems(
                
                leading: Button(action: {
                //
            }){
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(.black)
                
            },
               trailing: HStack {
                Button(action: {
                    //
                }){
                    Image(systemName: "camera")
                        .foregroundColor(.black)
                }
                Button(action: {
                    //
                }){
                    Image(systemName: "photo")
                        .foregroundColor(.black)
                }
                
                
            })
            .navigationBarTitle("Home",displayMode: .inline)
        }
    }
}

struct M5Task4_1_Previews: PreviewProvider {
    static var previews: some View {
        M5Task4_1()
    }
}
