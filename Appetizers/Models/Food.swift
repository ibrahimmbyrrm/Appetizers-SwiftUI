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
struct Food : Codable, Identifiable {
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
}
