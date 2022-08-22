//
//  DataService.swift
//  OrderUp
//
//  Created by Hasan on 8/5/22.
//

import Foundation

class DataService {
    static let shared = DataService()
    
    public let categories = [
        ShopCategory(imageName: "appetizer", name: "Appetizers", id: 1),
        ShopCategory(imageName: "turkey", name: "Meats", id: 2),
        ShopCategory(imageName: "banana", name: "Fruits", id: 3),
        ShopCategory(imageName: "asparagus", name: "Veggies", id: 4)
    ]
    
    public let items = [
        ShopItem(imageName: "pizza", name: "Pizza", detail: "Delicious Dish", price: 7.99, category: "Appetizers", id: 1),
        ShopItem(imageName: "sandwich", name: "Sandwich", detail: "Delicious Dish", price: 5.99, category: "Appetizers", id: 2),
        ShopItem(imageName: "noodles", name: "Noodles", detail: "Delicious Dish", price: 9.99, category: "Appetizers", id: 3),
        ShopItem(imageName: "fries", name: "Fries", detail: "Delicious Dish", price: 3.99, category: "Appetizers", id: 4),
        
        ShopItem(imageName: "turkey", name: "Turkey", detail: "Delicious Meat", price: 13.99, category: "Meats", id: 5),
        ShopItem(imageName: "gammon", name: "Gammon", detail: "Delicious Meat", price: 15.99, category: "Meats", id: 6),
        ShopItem(imageName: "salmon", name: "Salmon", detail: "Delicious Fish", price: 17.99, category: "Meats", id: 7),
        ShopItem(imageName: "shrimp", name: "Shrimps", detail: "Delicious Shrimps", price: 11.99, category: "Meats", id: 8),
        
        ShopItem(imageName: "banana", name: "Banana", detail: "Delicious Fruit", price: 1.99, category: "Fruits", id: 9),
        ShopItem(imageName: "pear", name: "Pear", detail: "Delicious Fruit", price: 1.99, category: "Fruits", id: 10),
        ShopItem(imageName: "tomato", name: "Tomato", detail: "Delicious Fruit", price: 1.99, category: "Fruits", id: 11),
        ShopItem(imageName: "pepper", name: "Pepper", detail: "Delicious Fruit", price: 1.99, category: "Fruits", id: 12),
        
        ShopItem(imageName: "asparagus", name: "Asparagus", detail: "Healthy Vegetable", price: 3.99, category: "Veggies", id: 13),
        ShopItem(imageName: "carrot", name: "Carrot", detail: "Healthy Vegetable", price: 3.99, category: "Veggies", id: 14),
        ShopItem(imageName: "beetroot", name: "Beetroot", detail: "Healthy Vegetable", price: 3.99, category: "Veggies", id: 15),
        ShopItem(imageName: "mushroom", name: "Mushroom", detail: "Healthy Vegetable", price: 3.99, category: "Veggies", id: 16)
    ]
}
