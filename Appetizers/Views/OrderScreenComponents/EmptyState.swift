//
//  EmptyState.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 15.09.2023.
//

import SwiftUI

struct EmptyState : View {
    
    let imageName : String
    let message : String
    
    var body : some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }// VStack
            .offset(y: -50)
        }// ZStack
    }
}

struct EmptyStatePreview : PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "This is our text message.")
    }
}
