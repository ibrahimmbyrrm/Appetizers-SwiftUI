//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import Foundation
import SwiftUI

final class AppetizerListViewModel : ObservableObject {
    
    @Published var appetizers : [Food] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading : Bool = false
    @Published var selectedAppetizer : Food! {
        didSet {
            isShowingDetail = true
        }
    }
    @Published var isShowingDetail = false
    

    func getAppetizerList() {
        isLoading = true
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.fetchData(type: FoodResponse.self).request
                isLoading = false
            }catch {
                if let networkError = error as? NetworkError {
                    switch networkError {
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidUrl:
                        self.alertItem = AlertContext.invalidURL
                    case .unabletoComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }else {
                    alertItem = AlertContext.invalidResponse
                }
                isLoading = false
            }
        }
    }

}
