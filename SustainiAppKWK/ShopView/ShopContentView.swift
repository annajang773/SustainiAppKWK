//
//  ShopContentView.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct ShopContentView: View {
    
    @StateObject var cartManager = CartManager()
      @State private var columns = [GridItem(.adaptive(minimum: 160), spacing:20)]
      var body: some View {
        NavigationStack {
          ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
              ForEach(productList, id: \.id) { product in ProductCard(product: product)
                  .environmentObject(cartManager)
              }
            }
            .padding()
          }
          .navigationTitle(Text("Shop"))
          .toolbar{
              NavigationLink{
                CartView()
                  .environmentObject(cartManager)
              } label:{
                CartButton(numberOfProducts: cartManager.products.count)
              }
          }
        }
        .navigationViewStyle(StackNavigationViewStyle())
      }
    }






struct ShopContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShopContentView()
    }
}
