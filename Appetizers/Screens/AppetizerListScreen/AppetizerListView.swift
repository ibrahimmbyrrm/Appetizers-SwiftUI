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
                List(viewModel.searchResults, id: \.id, rowContent: { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                        }
                })//List
                .disabled(viewModel.isShowingDetail)
                .navigationTitle(Text("🍟 Appetizers"))
            }//NavigationStack
            .searchable(text: $viewModel.searchText, prompt: Text("Enter"))
            .onAppear() {
                viewModel.getAppetizerList()
            }
            
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            if viewModel.isShowingDetail {
                AppetizerDetail(selectedAppetizer: viewModel.selectedAppetizer,isShowingDetail: $viewModel.isShowingDetail)
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .slide))
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }//ZStack
        .animation(.linear)
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
