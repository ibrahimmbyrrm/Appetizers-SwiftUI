//
//  AppetizerDetail.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import SwiftUI

struct AppetizerDetail: View {
    
    var selectedAppetizer : Food
    @Binding var isShowingDetail : Bool
    
    var body: some View {
        VStack {
            DetailScreenImage(imageUrl: selectedAppetizer.imageURL)
            Text(selectedAppetizer.name)
                .font(.title2)
                .fontWeight(.semibold)
            Text(selectedAppetizer.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
           FoodValuesTable(appetizer: selectedAppetizer)
            Spacer()
    
            Button {
                print("add to order tapped")
            } label: {
                AddToOrderButton(price: selectedAppetizer.price)
            }
            .padding(.bottom,20)
        }
        .frame(width: 320,height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 100)
        .overlay(alignment: .topTrailing) {
            Button {
                isShowingDetail = false
            } label: {
                CloseButtonLabel()
            }

        }
    }
}

struct AppetizerDetail_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetail(selectedAppetizer: MockData.mockAppetizer, isShowingDetail: .constant(true))
    }
}
