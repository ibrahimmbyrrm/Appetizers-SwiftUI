//
//  NetworkManager.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    let url = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers"
    
    private init() {}
    
    func fetchData<T : Codable>(type : T.Type) async throws -> T {
        guard let url = URL(string: self.url) else {
            throw NetworkError.invalidUrl
        }
        let (data,_) = try await URLSession.shared.data(from: url)
        
        do {
            let decodedData = try JSONDecoder().decode(T.self, from: data)
            return decodedData
        }catch {
            throw NetworkError.invalidData
        }
    }
}
