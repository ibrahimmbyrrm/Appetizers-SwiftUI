//
//  AddToOrderButton.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import SwiftUI

struct AddToOrderButton : View {
    
    var price : Double
    
    var body: some View {
        Text("$\(price, specifier: "%.2f") - Add to Order")
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(Color.brandPrimary)
            .font(.title3)
            .cornerRadius(12)
    }
}
