//
//  CloseButtonLabel.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 14.09.2023.
//

import SwiftUI

struct CloseButtonLabel : View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .frame(width: 44, height: 44)
                .imageScale(.medium)
                .foregroundColor(.black)
        }
    }
}
