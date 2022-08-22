//
//  ContentView.swift
//  OrderUp
//
//  Created by Hasan on 8/3/22.
//

import SwiftUI

//MARK: Home View
struct HomeView: View {
    var availableCategories: [ShopCategory] = DataService.shared.categories
    @State private var availableItems: [ShopItem] = DataService.shared.items
    @StateObject var cart = CartItem()
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("Categories")
                    .fontWeight(.bold)
                    .padding()
                    .frame(minWidth: 100)
                    .offset(x: -135)
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach (availableCategories) { category in
                            shopColumn(shopCategory: category)
                                .onTapGesture {
                                    availableItems = categoryTapped(category: category.name)
                                    
                                }
                        }
                    }
                }
                .offset(y: -10)
                
                Section(header: ItemHeader()){}
                
                List (availableItems) { item in
                    
                    shopRow(cart: cart, shopItem: item)
                    
                }
                
                .navigationTitle("OrderUp")
                .navigationBarItems(trailing: Cart(cartItems: cart.item))
                
                .navigationBarItems(leading:
                                        Button(action: {
                    // Perform any logic upon tapping user icon
                }) {
                    Image("user")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .frame(minHeight: 50)
                        .offset(x: -30)
                })
                
                .listStyle(.plain)
            }
        }
    }
    
    private func categoryTapped(category: String) -> [ShopItem] {
        let items = DataService.shared.items.filter({$0.category == "\(category)"})
        return items
    }
    
}

//MARK: Previews
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
