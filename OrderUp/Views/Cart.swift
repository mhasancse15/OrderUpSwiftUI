//
//  Cart.swift
//  OrderUp
//
//  Created by Hasan on 8/5/22.
//

import SwiftUI

//MARK: Cart View
struct Cart: View {
    var cartItems: Int
    var body: some View {
        ZStack {
            Image("cart")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(maxWidth: 40)
            .offset(x: -10, y: 5)
            ZStack {
                Circle()
                .fill(Color.red)
                .frame(maxWidth: 25)
                Text("\(cartItems)")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            .offset(x: 5, y: 10)
            .opacity(cartItems > 0 ? 1.0 : 0)
        }
    }
}
