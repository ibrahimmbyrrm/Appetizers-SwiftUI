//
//  Food.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import Foundation

struct FoodResponse : Codable {
    let request : [Food]
}
struct Food : Codable, Identifiable, Hashable {
    let id : Int
    let name : String
    let price : Double
    let carbs : Int
    let protein : Int
    let calories : Int
    let description : String
    let imageURL : String
}

struct MockData {
    static let mockAppetizer = Food(id: 1, name: "İskender", price: 129.90, carbs: 100, protein: 50, calories: 600, description: "En iyi türk yemeği", imageURL: "")
    static let appetizers = [mockAppetizer,mockAppetizer,mockAppetizer]
    
    static let orderAppetizer1 = Food(id: 1, name: "İskender", price: 129.90, carbs: 100, protein: 50, calories: 600, description: "En iyi türk yemeği", imageURL: "")
    static let orderAppetizer2 = Food(id: 2, name: "Döner", price: 129.90, carbs: 100, protein: 50, calories: 600, description: "En iyi türk yemeği", imageURL: "")
    static let orderAppetizer3 = Food(id: 3, name: "Balaban Köfte", price: 129.90, carbs: 100, protein: 50, calories: 600, description: "En iyi türk yemeği", imageURL: "")
    static let orderAppetizer4 = Food(id: 1, name: "Zurna Dürüm", price: 129.90, carbs: 100, protein: 50, calories: 600, description: "En iyi türk yemeği", imageURL: "")
    
    static let orders = [orderAppetizer1,orderAppetizer2,orderAppetizer3,orderAppetizer4]
    
}
