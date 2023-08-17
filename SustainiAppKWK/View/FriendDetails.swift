//
//  FriendDetails.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct FriendDetails: View {
    var friend:Friend
    var body: some View {
        VStack {
            Image(friend.poster)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200, alignment: .center)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding([.leading, .trailing])
            VStack {
                Image(friend.avatar)
                    .resizable()
                    .clipped()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                Text(friend.name)
                    .fontWeight(.bold)
            }.offset(y: -70)
            
            
            VStack {
                HStack(spacing:20){
                Spacer()
                  Image("placeholder0")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70)
                    .cornerRadius(10)
                  VStack(alignment: .leading, spacing: 10){
                    Text("Arizona Women's Black Shorts")
                      .bold()
                    Text("$10.00")
                  }
                  Spacer()
                }
                
                HStack(spacing:20){
                Spacer()
                  Image("placeholder1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70)
                    .cornerRadius(10)
                  VStack(alignment: .leading, spacing: 10){
                    Text("Floral off-shoulder shirt             ")
                      .bold()
                    Text("$15.00")
                  }
                  Spacer()
                }
                
                HStack(spacing:20){
                Spacer()
                  Image("P0 (2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70)
                    .cornerRadius(10)
                  VStack(alignment: .leading, spacing: 10){
                    Text("Striped dress                                ")
                      .bold()
                    Text("$20.00")
                  }
                  Spacer()
                }
                
            }
            Spacer()
        }.navigationBarTitle(Text(friend.name), displayMode: .inline)
    }
}

struct FriendDetails_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetails(friend: Friend(name: "Anna J.", mutualFriends: 1, avatar: "david", poster: "sanfrancisco"))
    }
}
