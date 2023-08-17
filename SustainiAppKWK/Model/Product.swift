//
//  Product.swift
//  SustainiAppKWK
//
//  Created by scholar on 8/17/23.
//

import Foundation

struct Product:Identifiable{
  var id = UUID()
  var name:String
  var image:String
  var price:Int
  var description:String
  var size:String
  var number:Int
}
var productList = [Product(name: "Tommy Hilfiger Women's Jumper", image: "P0 (1)", price: 10, description: "white v neck sweater. good condition, officially licensed.", size:"S", number:0),
          Product(name: "Striped dress", image: "P0 (2)", price: 20, description:"ZARA MAXI BODYCON. Like new.", size:"S", number:1),
          Product(name: "International Concepts Women's White and Pink Top", image: "P0 (3)", price: 22, description: "NWT deadstock Y2k sequin butterfly tank top. Britney Spears vibes. Fits s/m best fits medium. Can’t ship until Monday 8/20:butterfly:", size:"M", number:2),
          Product(name: "Urban Outfitters Women's Vest", image: "P0 (4)", price: 15, description: "TLF grey oversized hoodie. Slightly used.", size:"S", number:3),
          Product(name: "Alphalete Gray Hoodie", image: "P0 (5)", price: 20, description: "urban outfitters tank top. like new!", size:"S", number:4),
          Product(name: "Aerie Women's Hoodie", image: "P0 (6)", price: 18, description: "aerie soft quarter zip. little bit of pilling but not bad", size:"XS", number:5),
          Product(name: "Everlane Women's Yellow Shirt", image: "P0 (7)", price: 10, description: "Perfect condition everlane shirt! Buttons up the front. Pretty mustard color", size:"M", number:6),
          Product(name: "Universal Thread Green Trousers", image: "P0 (8)", price: 10, description: "Picture is the true green color of the pants! These beauts are high waisted with a button up “zipper” area. I am 5’7 and these fall about 2 inches above my ankle. They look sick with a pair of combat boots!!", size:"28", number:7)]









