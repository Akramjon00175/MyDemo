//
//  Tab_PageView.swift
//  MyDemo
//
//  Created by Akramjon on 07/06/23.
//

import SwiftUI

struct Tab_PageView: View {
    var body: some View {
        TabView{
            Image("car1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
            Image("car2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
            Image("car3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct Tab_PageView_Previews: PreviewProvider {
    static var previews: some View {
        Tab_PageView()
    }
}
