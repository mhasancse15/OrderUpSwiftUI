//
//  ItemHeader.swift
//  OrderUp
//
//  Created by Hasan on 8/5/22.
//

import SwiftUI

//MARK: Item Header
struct ItemHeader: View {
    var body: some View {
        HStack {
            Text("Menu")
            
                .fontWeight(.bold)
                .padding()
                .frame(minWidth: 100)
                .offset(x: -155)
                .font(.system(size: 18))
                .foregroundColor(.gray)
        }
    }
}
