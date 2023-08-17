//
//  ProfileContentView.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct ProfileContentView: View {
    
    @StateObject var cartManager = CartManager()
    var body: some View {
       
        NavigationStack {
          VStack {
            
            Image("karliepfp")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(height:150)
                  .clipped()
                  .clipShape(Circle())
            Text ("Karlie Kloss")
              .font(.title2)
              .fontWeight(.bold)
              .foregroundColor(Color.black)
              .padding(.top, 10.0)
              .font(.headline)
              .frame(alignment: .top)
            Text ("@kodewithklossy")
              .font(.headline)
              .bold()
              .padding([.leading, .trailing], 100.0)
              
            Text("business model.")
                .padding(.vertical, 5)
              
              
              NavigationLink{
                CartView()
                  .environmentObject(cartManager)
              } label:{
                Text("view cart")
              }
              .padding(10)
              .background(Color("logoColor"))
              .foregroundColor(.white)
              .font(.headline)
              .cornerRadius(10)
              
              HStack{
                  Image("placeholder0")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 100, height: 100)
                      .clipShape(RoundedRectangle(cornerRadius: 10))
                  Image("placeholder1")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 100, height: 100)
                      .clipShape(RoundedRectangle(cornerRadius: 10))
                  Image("placeholder2")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 100, height: 100)
                      .clipShape(RoundedRectangle(cornerRadius: 10))
              }
              .padding(.top, 50)
            
          }
        }
      }
}

struct ProfileContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileContentView()
    }
}
