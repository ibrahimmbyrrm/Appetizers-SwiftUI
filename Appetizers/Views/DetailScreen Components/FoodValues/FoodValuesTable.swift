//
//  FoodValuesTable.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 14.09.2023.
//

import SwiftUI

struct FoodValuesTable : View {
    
    var appetizer : Food
    
    var body: some View {
        HStack(spacing: 30) {
            FoodValuesCell(title: "Calories", value: appetizer.calories)
            FoodValuesCell(title: "Carbs", value: appetizer.carbs)
            FoodValuesCell(title: "Protein", value: appetizer.protein)
        }
    }
}
