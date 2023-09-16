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
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthday", selection: $viewModel.user.birthday, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                            .foregroundColor(.brandPrimary)
                    }//Button-Label
                }//Section
                //MARK: - Requests Section
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $viewModel.user.isExtraNapkinsNeeded)
                        .tint(.brandPrimary)
                    Toggle("Frequent Refills",isOn: $viewModel.user.isFrequentRefillsNeeded)
                        .tint(.brandPrimary)
                }//Section
            }//Form
            .navigationTitle(Text("👤 Account"))
        }//NavigationStack
        .onAppear() {
            viewModel.retrieveUser()
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
