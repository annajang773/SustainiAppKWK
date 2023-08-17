//
//  ProductCard.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: CartManager
      var product: Product
      var body: some View {
        NavigationStack {
          ZStack(alignment: .bottom){
            NavigationLink{
              ExpandedProductCard(product: productList[product.number])
                .environmentObject(cartManager)
            } label:{
              Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:180)
                .clipped()
            }
            VStack(alignment: .leading){
              Text(product.name)
                .bold()
              Text("$\(product.price)")
                .font(.caption)
            }
            .padding()
            .frame(width:180, alignment: .leading)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
          }
          .frame(width:180, height:250)
          .cornerRadius(20)
        .shadow(radius: 3)
        }
      }
    }
    struct ProductCard_Previews: PreviewProvider {
      static var previews: some View {
        ProductCard(product: productList[0])
          .environmentObject(CartManager())
      }
    }
