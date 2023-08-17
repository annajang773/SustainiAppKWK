//
//  FriendsView.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct Friend: Identifiable {
    var id:UUID = UUID()
    var name:String
    var mutualFriends:Int
    var avatar:String
    var poster: String
}

struct FriendsView: View {
    
    var friends:[Friend] = [
        Friend(name: "Lia K.", mutualFriends: 350, avatar: "cristina", poster: "alps"),
        Friend(name: "Anna J.", mutualFriends: 1, avatar: "david", poster: "sanfrancisco"),
        Friend(name: "Tanya S.", mutualFriends: 22, avatar: "robert", poster: "london"),
        Friend(name: "Stephanie W.", mutualFriends: 10, avatar: "ruxi", poster: "paris"),
        Friend(name: "Delia C.", mutualFriends: 2, avatar: "george", poster: "newyork"),
        Friend(name: "Maddie", mutualFriends: 50, avatar: "tim", poster: "milan"),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(friends, id: \.id ) { friend in
                    FriendRow(friend: friend)
                        .padding()
                }.navigationBarTitle("Friends")
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}

