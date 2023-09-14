//
//  AccountView.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject private var viewModel = AccountViewModel()
    
    
    var body: some View {
        NavigationStack {
            Form {
                //MARK: - Personal Info Section
                Section("Personal Info") {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthday", selection: $viewModel.birthday, displayedComponents: .date)
                    Button {
                        let _ = viewModel.isValidForm
                    } label: {
                        Text("Save Changes")
                            .foregroundColor(.brandPrimary)
                    }
                }
                //MARK: - Requests Section
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $viewModel.isExtraNapkinsNeeded)
                        .tint(.brandPrimary)
                    Toggle("Frequent Refills",isOn: $viewModel.isFrequentRefillsNeeded)
                        .tint(.brandPrimary)
                }
                
            }
            .navigationTitle(Text("👤 Account"))
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.description, dismissButton: alertItem.dismissButton)
        }
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
