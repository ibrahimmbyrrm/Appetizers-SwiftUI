//
//  Order.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 15.09.2023.
//

import SwiftUI

final class Order : ObservableObject {
    
    @Published var items : [Food] = []
    
    func add(_ food : Food) {
        items.append(food)
    }
    
    func delete(at offSets: IndexSet) {
        items.remove(atOffsets: offSets)
    }
    
    func getNumberOfOrder() -> Int {
        return items.count
    }
    
    var totalPriceFormattedString : String {
        let total = items.reduce(0) { $0 + $1.price}
        return String(format: "%.2f", total)
    }
    
}
