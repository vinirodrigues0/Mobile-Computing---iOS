//
//  groceries.swift
//  Rodrigues_Groceries
//
//  Created by Vinicius Rodrigues on 11/26/24.
//

import Foundation
import UIKit

struct Item {
    let itemName: String
    let image: UIImage
    let itemPrice: Double
    let itemExpiry: String
    let itemDescription: String
    let itemQuantity: Int
    let itemOrigin: String
}

// Generate Data

let fruits: [Item] = [
    Item(itemName: "Orange", image: UIImage(named: "orange")!, itemPrice: 1.29, itemExpiry: "2024-12-04", itemDescription: "Juicy oranges", itemQuantity: 12, itemOrigin: "Brazil"),
    Item(itemName: "Grape", image: UIImage(named: "grape")!, itemPrice: 3.66, itemExpiry: "2024-12-04", itemDescription: "Seedless grapes", itemQuantity: 2, itemOrigin: "California"),
    Item(itemName: "Strawberry", image: UIImage(named: "strawberry")!, itemPrice: 2.50, itemExpiry: "2024-12-08", itemDescription: "Fresh organic strawberries", itemQuantity: 3, itemOrigin: "Florida"),
    Item(itemName: "Pineapple", image: UIImage(named: "pineapple")!, itemPrice: 4.00, itemExpiry: "2024-12-15", itemDescription: "Sweet tropical pineapple", itemQuantity: 1, itemOrigin: "Hawaii"),
    Item(itemName: "Watermelon", image: UIImage(named: "watermelon")!, itemPrice: 5.50, itemExpiry: "2024-12-10", itemDescription: "Juicy watermelon", itemQuantity: 7, itemOrigin: "Texas"),
    Item(itemName: "Lemon", image: UIImage(named: "lemon")!, itemPrice: 0.89, itemExpiry: "2024-12-20", itemDescription: "Zesty lemons", itemQuantity: 10, itemOrigin: "California"),
    Item(itemName: "Peach", image: UIImage(named: "peach")!, itemPrice: 1.80, itemExpiry: "2024-12-12", itemDescription: "Sweet and juicy peaches", itemQuantity: 6, itemOrigin: "Georgia"),
    Item(itemName: "Kiwi", image: UIImage(named: "kiwi")!, itemPrice: 0.99, itemExpiry: "2024-12-10", itemDescription: "Green kiwi", itemQuantity: 8, itemOrigin: "New Zealand"),
    Item(itemName: "Apple", image: UIImage(named: "apple")!, itemPrice: 1.25, itemExpiry: "2024-12-18", itemDescription: "Crisp red apples", itemQuantity: 5, itemOrigin: "Washington"),
    Item(itemName: "Mango", image: UIImage(named: "mango")!, itemPrice: 2.79, itemExpiry: "2024-12-14", itemDescription: "Sweet yellow mangoes", itemQuantity: 4, itemOrigin: "Mexico")
]

let vegetables: [Item] = [
    Item(itemName: "Brocolli", image: UIImage(named: "brocolli")!, itemPrice: 1.99, itemExpiry: "2024-12-08", itemDescription: "Fresh brocolli", itemQuantity: 3, itemOrigin: "California"),
    Item(itemName: "Spinach", image: UIImage(named: "spinach")!, itemPrice: 1.49, itemExpiry: "2024-12-05", itemDescription: "Organic spinach", itemQuantity: 2, itemOrigin: "Florida"),
    Item(itemName: "Carrot", image: UIImage(named: "carrot")!, itemPrice: 0.99, itemExpiry: "2024-12-10", itemDescription: "Crunchy orange carrots", itemQuantity: 10, itemOrigin: "Texas"),
    Item(itemName: "Potato", image: UIImage(named: "potato")!, itemPrice: 0.69, itemExpiry: "2024-12-15", itemDescription: "Russet potatoes", itemQuantity: 8, itemOrigin: "Idaho"),
    Item(itemName: "Tomato", image: UIImage(named: "tomato")!, itemPrice: 1.89, itemExpiry: "2024-12-09", itemDescription: "Ripe red tomatoes", itemQuantity: 5, itemOrigin: "California"),
    Item(itemName: "Bell Pepper", image: UIImage(named: "bell pepper")!, itemPrice: 1.50, itemExpiry: "2024-12-11", itemDescription: "Green bell peppers", itemQuantity: 6, itemOrigin: "Mexico"),
    Item(itemName: "Cucumber", image: UIImage(named: "cucumber")!, itemPrice: 0.99, itemExpiry: "2024-12-27", itemDescription: "Cool crisp cucumbers", itemQuantity: 3, itemOrigin: "California"),
    Item(itemName: "Zucchini", image: UIImage(named: "zucchini")!, itemPrice: 1.29, itemExpiry: "2024-12-12", itemDescription: "Fresh green zucchini", itemQuantity: 4, itemOrigin: "Arizona"),
    Item(itemName: "Cauliflower", image: UIImage(named: "cauliflower")!, itemPrice: 2.50, itemExpiry: "2024-12-06", itemDescription: "White cauliflower head", itemQuantity: 1, itemOrigin: "New Mexico"),
    Item(itemName: "Lettuce", image: UIImage(named: "lettuce")!, itemPrice: 1.25, itemExpiry: "2024-12-05", itemDescription: "Crisp green lettuce", itemQuantity: 2, itemOrigin: "Florida")
]

let dairy: [Item] = [
    Item(itemName: "Milk", image: UIImage(named: "milk")!, itemPrice: 1.99, itemExpiry: "2024-12-10", itemDescription: "Whole milk", itemQuantity: 20, itemOrigin: "Wisconsin"),
    Item(itemName: "Cheddar Cheese", image: UIImage(named: "cheddar")!, itemPrice: 4.49, itemExpiry: "2024-12-15", itemDescription: "Sharp cheddar", itemQuantity: 15, itemOrigin: "Vermont"),
    Item(itemName: "Yogurt", image: UIImage(named: "yogurt")!, itemPrice: 0.89, itemExpiry: "2024-12-08", itemDescription: "Strawberry yogurt", itemQuantity: 25, itemOrigin: "California"),
    Item(itemName: "Butter", image: UIImage(named: "butter")!, itemPrice: 3.29, itemExpiry: "2025-01-15", itemDescription: "Unsalted butter", itemQuantity: 30, itemOrigin: "Texas"),
    Item(itemName: "Cream Cheese", image: UIImage(named: "cream cheese")!, itemPrice: 2.50, itemExpiry: "2024-12-20", itemDescription: "Cream cheese", itemQuantity: 10, itemOrigin: "New York"),
    Item(itemName: "Greek Yogurt", image: UIImage(named: "greek yogurt")!, itemPrice: 1.50, itemExpiry: "2024-12-12", itemDescription: "Plain Greek yogurt", itemQuantity: 22, itemOrigin: "California"),
    Item(itemName: "Sour Cream", image: UIImage(named: "sour cream")!, itemPrice: 1.99, itemExpiry: "2024-12-18", itemDescription: "Tasty Sour cream", itemQuantity: 18, itemOrigin: "Colorado"),
    Item(itemName: "Mozzarella Cheese", image: UIImage(named: "mozzarella")!, itemPrice: 4.00, itemExpiry: "2024-12-25", itemDescription: "Fresh Mozzarella", itemQuantity: 16, itemOrigin: "Italy"),
    Item(itemName: "Heavy Cream", image: UIImage(named: "heavy cream")!, itemPrice: 3.79, itemExpiry: "2024-12-14", itemDescription: "Heavy whipping cream", itemQuantity: 12, itemOrigin: "Wisconsin"),
    Item(itemName: "Cottage Cheese", image: UIImage(named: "cottage cheese")!, itemPrice: 2.49, itemExpiry: "2024-12-09", itemDescription: "Creamy cottage cheese", itemQuantity: 14, itemOrigin: "California")
]

let grains: [Item] = [
    Item(itemName: "White Bread", image: UIImage(named: "white bread")!, itemPrice: 2.49, itemExpiry: "2024-12-05", itemDescription: "Sliced white bread", itemQuantity: 30, itemOrigin: "Illinois"),
    Item(itemName: "Pasta", image: UIImage(named: "pasta")!, itemPrice: 1.29, itemExpiry: "2025-01-20", itemDescription: "Dry spaghetti", itemQuantity: 40, itemOrigin: "Italy"),
    Item(itemName: "Rice", image: UIImage(named: "rice")!, itemPrice: 3.00, itemExpiry: "2025-01-15", itemDescription: "Long grain white rice", itemQuantity: 25, itemOrigin: "Arkansas"),
    Item(itemName: "Oatmeal", image: UIImage(named: "oatmeal")!, itemPrice: 4.99, itemExpiry: "2025-02-05", itemDescription: "Steel-cut oats", itemQuantity: 12, itemOrigin: "Iowa"),
    Item(itemName: "Cereal", image: UIImage(named: "cereal")!, itemPrice: 3.79, itemExpiry: "2025-01-10", itemDescription: "Whole grain cereal", itemQuantity: 15, itemOrigin: "California"),
    Item(itemName: "Flour", image: UIImage(named: "flour")!, itemPrice: 2.99, itemExpiry: "2025-01-25", itemDescription: "All-purpose flour", itemQuantity: 20, itemOrigin: "Kansas"),
    Item(itemName: "Tortillas", image: UIImage(named: "tortillas")!, itemPrice: 2.89, itemExpiry: "2024-12-28", itemDescription: "Flour tortillas", itemQuantity: 18, itemOrigin: "Mexico"),
    Item(itemName: "Quinoa", image: UIImage(named: "quinoa")!, itemPrice: 5.49, itemExpiry: "2025-03-15", itemDescription: "Organic quinoa", itemQuantity: 10, itemOrigin: "Peru"),
    Item(itemName: "Bagels", image: UIImage(named: "bagels")!, itemPrice: 4.50, itemExpiry: "2024-12-08", itemDescription: "Plain bagels", itemQuantity: 14, itemOrigin: "New York"),
    Item(itemName: "Cornmeal", image: UIImage(named: "cornmeal")!, itemPrice: 3.99, itemExpiry: "2025-02-20", itemDescription: "Yellow cornmeal", itemQuantity: 12, itemOrigin: "Texas")
]

let meats: [Item] = [
    Item(itemName: "Chicken Breast", image: UIImage(named: "chicken")!, itemPrice: 5.99, itemExpiry: "2024-12-02", itemDescription: "Boneless chicken breast", itemQuantity: 30, itemOrigin: "Arkansas"),
    Item(itemName: "Ground Beef", image: UIImage(named: "ground beef")!, itemPrice: 6.49, itemExpiry: "2024-12-10", itemDescription: "Ground beef 85% lean", itemQuantity: 20, itemOrigin: "Texas"),
    Item(itemName: "Pork chops", image: UIImage(named: "pork chops")!, itemPrice: 4.99, itemExpiry: "2024-12-12", itemDescription: "Bone-in pork chops", itemQuantity: 25, itemOrigin: "Missouri"),
    Item(itemName: "Bacon", image: UIImage(named: "bacon")!, itemPrice: 7.99, itemExpiry: "2024-12-08", itemDescription: "Smoked bacon", itemQuantity: 15, itemOrigin: "Tennessee"),
    Item(itemName: "Turkey Breast", image: UIImage(named: "turkey")!, itemPrice: 5.49, itemExpiry: "2024-12-15", itemDescription: "Sliced turkey breast", itemQuantity: 18, itemOrigin: "Minnesota"),
    Item(itemName: "Lamb Chops", image: UIImage(named: "lamb chops")!, itemPrice: 12.99, itemExpiry: "2024-12-20", itemDescription: "Fresh lamb chops", itemQuantity: 10, itemOrigin: "New Zealand"),
    Item(itemName: "Shrimp", image: UIImage(named: "shrimp")!, itemPrice: 14.99, itemExpiry: "2024-12-18", itemDescription: "Jumbo shrimp", itemQuantity: 12, itemOrigin: "Vietnam"),
    Item(itemName: "Salmon Fillet", image: UIImage(named: "salmon")!, itemPrice: 9.99, itemExpiry: "2024-12-09", itemDescription: "Fresh salmon fillet", itemQuantity: 15, itemOrigin: "Alaska"),
    Item(itemName: "Ham", image: UIImage(named: "ham")!, itemPrice: 4.79, itemExpiry: "2024-12-25", itemDescription: "Sliced ham", itemQuantity: 14, itemOrigin: "Virginia"),
    Item(itemName: "Sausage", image: UIImage(named: "sausage")!, itemPrice: 6.29, itemExpiry: "2024-12-22", itemDescription: "Italian sausage", itemQuantity: 16, itemOrigin: "Italy")
]

// Array to store categories along with their respective item lists to retrieve data in collection view.
let allCategories: [[Item]] = [fruits, vegetables, dairy, grains, meats]


// Array to store all category names to display in the table view and as title in the second view.
let categoryNames: [String] = ["fruits", "vegetables", "dairy", "grains", "meats"]

