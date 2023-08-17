//
//  ContentView.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State var activeTab:Int = 1
    
    var body: some View {
    TabView(selection: $activeTab) {
        ShopContentView() .tabItem { Image(systemName: "dollarsign.circle.fill") }.tag(1)
        
        UploadView().tabItem { Image(systemName: "camera") }.tag(2)
        HomeContentView().tabItem { Image(systemName: "house") }.tag(3)
        
        FriendsView().tabItem {
            Image(systemName: "person.3.fill")}.tag(4)
       
        
        NavigationLink{
          CartView()
            .environmentObject(cartManager)
        } label:{
          CartButton(numberOfProducts: cartManager.products.count)
        }.tabItem {Image(systemName: "cart.fill") }.tag(5)
        
        
        }
        
    }
}

/* FirstView()
    .tabItem {
        Image(systemName: "folder.fill")
        Text("Home")
    }*/
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
