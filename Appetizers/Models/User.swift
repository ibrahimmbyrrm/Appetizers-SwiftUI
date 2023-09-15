//
//  User.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 15.09.2023.
//

import Foundation

struct User : Codable {
    var firstName               = ""
    var lastName                = ""
    var email                   = ""
    var birthday                = Date()
    var isExtraNapkinsNeeded    = false
    var isFrequentRefillsNeeded = false
}
