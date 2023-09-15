//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 14.09.2023.
//

import SwiftUI

final class AccountViewModel : ObservableObject {
    
    @AppStorage("user") private var userData : Data?
    
    @Published var user = User()
    @Published var alertItem : AlertItem?
    
    func saveChanges() {
        guard isValidForm else {return}
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        }catch {
            alertItem = AlertContext.invalidUserData
        }
        
        print("Changes has been saved")
    }
    
    func retrieveUser() {
        guard let userData else {return}
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        }catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    var isValidForm : Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            self.alertItem = AlertContext.invalidForm
            return false
        }
        guard user.email.isValidMail else {
            self.alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    
    
}
