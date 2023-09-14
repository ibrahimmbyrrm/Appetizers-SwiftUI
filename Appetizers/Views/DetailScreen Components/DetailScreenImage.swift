//
//  DetailScreenImage.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 14.09.2023.
//

import SwiftUI

struct DetailScreenImage : View {
    
    var imageUrl : String
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { image in
            image.resizable()
        }placeholder: {
            Image("food-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(width: 325,height: 250)
        .aspectRatio(contentMode: .fit)
    }
}
