//
//  Alert.swift
//  MyDemo
//
//  Created by Akramjon on 07/06/23.
//

import SwiftUI

struct AlertPage: View {
    
    @State private var show = false
    @State private var isSheet = false
    
    var actionSheet: ActionSheet {
        
        let title = "iOS"
        let message = "Here we go"
        return ActionSheet(title: Text(title),
                           message: Text(message),
                           buttons: [
                            
                            .default(Text("OK")),
                            .destructive(Text("NO"))
                        
        ])
        
    }
    
    var body: some View {
        
        VStack{
            
            TabView {
                 
                Button("Show Alert") {
                    show = true
                }
                .alert(isPresented: $show) {
                    
                    let title = "iOS"
                    let message = "Here we go"
                    return Alert(title: Text(title),message: Text(message),primaryButton: .destructive(Text("NO")),secondaryButton: .default(Text("OK")))
                    
                }
                
                .tabItem({
                    
                            Image(systemName: "circle")
                            Text("Alert")
                    
                })
                .tag(0)
                
                Button("Show Sheet") {
                    isSheet = true
                }.actionSheet(isPresented: $isSheet) {
                    self.actionSheet
                }
           
                
                .tabItem({
                    
                            Image(systemName: "circle")
                            Text("Sheet")
                    
                })
                .tag(1)
            }
        }
        
    }
    
}



struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        AlertPage()
    }
}
