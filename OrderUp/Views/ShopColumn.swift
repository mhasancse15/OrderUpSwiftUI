//
//  ShopColumn.swift
//  OrderUp
//
//  Created by Hasan on 8/5/22.
//

import SwiftUI

//MARK: Store Categories
struct shopColumn: View {
    var shopCategory: ShopCategory
    var body: some View {
        
        VStack {
            Image(shopCategory.imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 200)
                .frame(maxHeight: 150)
            Text(shopCategory.name)
        }
    }
}
