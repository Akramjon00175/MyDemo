//
//  PresentScreen.swift
//  MyDemo
//
//  Created by Akramjon on 05/06/23.
//

import SwiftUI

struct PresentScreen: View, BindingDelegate{
    
    @State var showDetail = false
    @State var data = "No Data"
    
    func onReseived(value: String) {
        data = value
    }
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                Button(action: {
                    showDetail.toggle()
                }){
                    Text("Screen Present")
                }.sheet(isPresented: $showDetail) {
                    HomeScreenPresent(data: "PDP",delegate: BindingDelegate?.self)
                }
                Text(data).padding()
            }
            .navigationBarTitle("Home", displayMode: .inline)
            }
        .navigationBarTitle("Home",displayMode: .inline)
            .navigationBarItems(
                   leading:
                    Button(action: {
                        //
                    }){
                        Image(systemName: "line.3.horizontal")
                        
                    },
                   trailing:
                    Button(action: {
                        //
                    }){
                        Image(systemName: "trash")
                        
                    }
            )
            
        }
    }


struct PresentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PresentScreen()
    }
}

