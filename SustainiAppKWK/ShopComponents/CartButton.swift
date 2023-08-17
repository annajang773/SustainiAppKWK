//
//  CartButton.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct CartButton: View {
    
    var numberOfProducts:Int
      var body: some View {
        ZStack(alignment: .topTrailing){
          Image(systemName: "cart.fill")
            .padding(.top, 5)
          if numberOfProducts>0{
            Text("\(numberOfProducts)")
              .font(.caption2).bold()
              .foregroundColor(.white)
              .frame(width:15, height:15)
              .background(Color(hue: 0.384, saturation: 0.364, brightness: 0.724))
              .cornerRadius(50)
          }
        }
      }
    }
    struct CartButton_Previews: PreviewProvider {
      static var previews: some View {
        CartButton(numberOfProducts: 1)
      }
    }
