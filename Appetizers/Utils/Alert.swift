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
}
