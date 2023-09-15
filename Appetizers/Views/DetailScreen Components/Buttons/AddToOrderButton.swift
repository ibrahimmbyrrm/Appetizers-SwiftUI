//
//  AddToOrderButton.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import SwiftUI

struct AddToOrderButton : View {
    
    var title : String
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(Color.brandPrimary)
            .font(.title3)
            .cornerRadius(12)
    }
}
