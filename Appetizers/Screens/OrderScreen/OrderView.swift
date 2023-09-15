//
//  OrderView.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import SwiftUI

struct OrderView: View {

    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items, id: \.id) { order in
                            AppetizerListCell(appetizer: order)
                        }
                        .onDelete(perform: order.delete)
                    }// List
                    .listStyle(.plain)
                    .navigationTitle("🛒 Orders")
                    
                    Button {
                        print("Order has been placed.")
                    } label: {
                        AddToOrderButton(title: "$\(order.totalPriceFormattedString) - Place Order")
                    }
                }// VStack
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "Your have no items in your order.Please add an appetizer.")
                }
            }
            
        }// NavigationStack
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
