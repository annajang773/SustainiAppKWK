//
//  FriendRow.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI


struct FriendRow: View {
    var friend:Friend
    var body: some View {
        
        
        HStack {
            Image(friend.avatar)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .clipped()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
            
            VStack (alignment: .leading, spacing: 10){
                VStack (alignment: .leading, spacing: 20) {
                    Text(friend.name)
                        .foregroundColor(.primary)
                    Text("\(friend.mutualFriends) mutual friends")
                        .foregroundColor(.secondary)
                }
                    HStack {
                            Button(action: {
                            print("Add Friend")
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(height: 35)
                                    .foregroundColor(Color("logoColor"))
                                
                                    NavigationLink(destination: FriendDetails(friend: friend)) { Text("View Cart")}
                                        .font(.system(size: 13))
                                        .foregroundColor(.white)
                                }
                            }
                            
                            Button(action: {
                                print("Add Friend")
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 5)
                                        .frame(height: 35)
                                        .foregroundColor(Color(hue: 0.178, saturation: 0.016, brightness: 0.939))
                                    Text("Remove")
                                        .font(.system(size: 13))
                                        .foregroundColor(.black)
                                }
                            }
                            Spacer()
                        }
                    }
                }
            }
    }



struct FriendRow_Previews: PreviewProvider {
    static var previews: some View {
        FriendRow(friend: Friend(name: "Anna J", mutualFriends: 1, avatar: "david", poster: "sanfrancisco"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
