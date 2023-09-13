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
    
    func getAppetizers() {
        NetworkManager.shared.fetchAppetizers { result in
            switch result {
            case .success(let appetizerList):
                DispatchQueue.main.async {
                    self.appetizers = appetizerList
                }
            case .failure(let error):
                print(error)
            }
        }
    }

}
