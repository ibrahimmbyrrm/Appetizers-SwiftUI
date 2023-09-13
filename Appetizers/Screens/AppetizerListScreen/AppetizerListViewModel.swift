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
    
    func getAppetizers() {
        NetworkManager.shared.fetchAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizerList):
                    DispatchQueue.main.async {
                        self.appetizers = appetizerList
                    }
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidUrl:
                        self.alertItem = AlertContext.invalidURL
                    case .unabletoComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }

}
