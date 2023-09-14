//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 14.09.2023.
//

import SwiftUI

final class AccountViewModel : ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthday = Date()
    @Published var isExtraNapkinsNeeded = false
    @Published var isFrequentRefillsNeeded = false
    
    @Published var alertItem : AlertItem? {
        didSet{
            isAlertShowing = true
        }
    }
    
    @Published var isAlertShowing = false
    
    var isValidForm : Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            self.alertItem = AlertContext.invalidForm
            return false
        }
        guard email.isValidMail else {
            self.alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
}
