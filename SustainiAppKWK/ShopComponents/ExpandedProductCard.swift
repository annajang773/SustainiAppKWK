//
//  ExpandedProductCard.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct ExpandedProductCard: View {
    @EnvironmentObject var cartManager: CartManager
      var product: Product
      var body: some View {
        VStack(alignment: .leading, spacing: 0) {
          Image(product.image)
            .resizable()
            .scaledToFill()
            .frame(maxHeight: 350, alignment: .center)
            .clipped()
          VStack(alignment: .leading, spacing: 6) {
            Text(product.name)
              .font(.title3)
              .fontWeight(.semibold)
              .padding(.vertical)
            Text(product.description)
            Text("size \(product.size)")
              .font(.headline)
              .fontWeight(.black)
              .padding(.top)
            Text("$\(product.price)")
              .font(.headline)
              .fontWeight(.black)
          }
          HStack() {
            Spacer()
            Button {
              cartManager.addToCart(product: product)
              print(cartManager.products.count)
            } label: {
              Text("add to cart")
                .frame(width:120)
            }
            .padding(.vertical)
            .buttonStyle(.borderedProminent)
            .tint(Color(hue: 0.391, saturation: 0.325, brightness: 0.852))
            .foregroundColor(.black)
            Spacer()
          }
        }
        .padding()
        .background(Color.white)
          .cornerRadius(15)
          .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 2)
          .padding()
      }
    }
    struct ExpandedProductCard_Previews: PreviewProvider {
      static var previews: some View {
        ExpandedProductCard(product: productList[0])
          .environmentObject(CartManager())
      }
    }












