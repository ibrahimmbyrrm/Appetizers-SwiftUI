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
        ZStack {
            NavigationStack {
                List(viewModel.appetizers, id: \.id, rowContent: { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                        }
                })//List
                .disabled(viewModel.isShowingDetail)
                .navigationTitle(Text("🍟 Appetizers"))
            }//NavigationStack
            .onAppear() {
                viewModel.getAppetizers()
            }
            
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            if viewModel.isShowingDetail {
                AppetizerDetail(selectedAppetizer: viewModel.selectedAppetizer,isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }//ZStack
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.description, dismissButton: alertItem.dismissButton)
        }
    }
    
}


struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
