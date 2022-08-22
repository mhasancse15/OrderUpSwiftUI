//
//  ShopRow.swift
//  OrderUp
//
//  Created by Hasan on 8/5/22.
//

import SwiftUI

//MARK: Store Items
struct shopRow: View {
    @State private var quantity: Int = 0
    @ObservedObject var cart: CartItem
    
    var shopItem: ShopItem
    var body: some View {
        
        HStack {
            Image(shopItem.imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 100)
                .frame(maxHeight: 75)
            
            VStack {
                Text(shopItem.name)
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, -75.0)
                Spacer()
                
                if quantity != 0 {
                    Text("\(quantity)")
                        .offset(x: -50)
                    Spacer()
                }
                
                Text(shopItem.detail)
                    .padding(.leading, -45.0)
                    .foregroundColor(.gray)
                Spacer()
                
                HStack {
                    Text("$\(String(format: "%.2f", shopItem.price))")
                        .foregroundColor(.red)
                    
                    if quantity == 0 {
                        Button(action: {
                            quantity = 1
                            cart.item += 1
                            
                        }) {
                            Text("Add to Cart")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .frame(width: 90, height: 30)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .offset(x: 90)
                        }
                    } else {
                        Stepper("", onIncrement: {
                            quantity += 1
                            cart.item += 1
                            
                        }, onDecrement: {
                            quantity -= 1
                            cart.item -= 1
                            
                        })
                        .labelsHidden()
                        .offset(x: 100)
                    }
                }
            }
        }
    }
}
