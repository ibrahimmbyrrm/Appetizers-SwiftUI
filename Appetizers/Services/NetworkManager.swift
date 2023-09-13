//
//  NetworkManager.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    let url = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers"
    
    private init() {}
    
    func fetchAppetizers(completion : @escaping(Result<[Food],NetworkError>)->Void) {
        guard let url = URL(string: self.url) else {
            completion(.failure(.invalidUrl))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                completion(.failure(.unabletoComplete))
                return
            }
            guard let response = response as? HTTPURLResponse,response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            guard let data else {
                completion(.failure(.invalidData))
                return
            }
            let decoded = try? JSONDecoder().decode(FoodResponse.self, from: data)
            guard let decoded else {
                completion(.failure(.unabletoComplete))
                return
            }
            completion(.success(decoded.request))
        }.resume()
    }
    
    
}
