//
//  OrderView.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationStack {
            Text("OrderView")
                .navigationTitle(Text("🛒 Orders"))
        }
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
