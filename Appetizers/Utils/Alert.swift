//
//  Alert.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import SwiftUI

struct AlertItem : Identifiable {
    let id = UUID()
    let title : Text
    let description : Text
    let dismissButton : Alert.Button
}

struct AlertContext {
    //MARK: - Network Errors
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       description: Text("The data receiver from the server was invalid.Please contact support..."),
                                       dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           description: Text("Invalid response from the server.Please try again later or contat support..."),
                                           dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      description: Text("There was an issue connecting to the server. If this persist, please contact support..."),
                                      dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            description: Text("Unable to complete your request at this time.Please check yourn internet connection."),
                                            dismissButton: .default(Text("OK")))
    //MARK: - Account Errors
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                       description: Text("Please ensure all fields in the form have been filled out."),
                                       dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                       description: Text("Please ensure your email is correct"),
                                       dismissButton: .default(Text("OK")))
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                           description: Text("Your profile informations was successfuly saved."),
                                           dismissButton: .default(Text("OK")))
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                           description: Text("There was an error saving or retrieving your profile."),
                                           dismissButton: .default(Text("OK")))
}
