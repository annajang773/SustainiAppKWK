//
//  HomeContentView.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct HomeContentView: View {
    @State var activeTab:Int = 2
    @State private var cardOffset: CGSize = .zero
    @State private var translation: CGSize = .zero
    @State var imageUrl = ["P0 (1)", "P0 (2)", "P0 (3)", "P0 (4)", "P0 (5)", "P0 (6)", "P0 (7)", "P0 (8)"]
    @State var imageUrlIndex = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.white).edgesIgnoringSafeArea(.all)
                VStack {
                    HStack{
                        Image(systemName: "message")
                            .foregroundColor(Color.black)
                            .font(.system(size: 30.0))
                            .frame(height: 100)
                            .padding()
                        Spacer()
                        Text("sustainï")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        
                        NavigationLink(){
                            ProfileContentView()
                        } label: {
                            Image(systemName: "person.crop.circle.fill")
                                .foregroundColor(Color.black)
                                .font(.system(size: 30.0))
                                .frame(height: 100)
                                .padding()
                        }
                        
                    }
                    
                    
                    
                    ZStack {
                        
                        Image(imageUrl[imageUrlIndex])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 400)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    HStack {
                        
                        Image(systemName: "smiley.fill")
                            .foregroundColor(Color.black)
                            .font(.system(size: 40.0))
                            .frame(height: 90)
                        
                        Text( "@username : description of item")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    HStack {
                        Button {
                            self.imageUrlIndex += 1
                        } label:{
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(Color.black)
                                .font(.system(size: 70.0))
                                .frame(height: 100)
                        }.offset(y: -40)
                        
                        
                        Button{
                            self.imageUrlIndex += 1
                        }label: {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(Color.black)
                                .font(.system(size: 70.0))
                                .frame(height: 100)
                        }.offset(y: -40)
                        
                        
                    }
                   // Spacer()
                }
            }
        }
    }
    
    struct HomeContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomeContentView()
        }
    }
}
