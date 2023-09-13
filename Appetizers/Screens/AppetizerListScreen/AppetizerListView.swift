//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.appetizers, id: \.id, rowContent: { appetizer in
                AppetizerListCell(appetizer: appetizer)
            })
            .navigationTitle(Text("🍟 Appetizers"))
        }
        .onAppear() {
            viewModel.getAppetizers()
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
