//
//  ApiManager.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 07/06/2024.
//

import Foundation

class ApiManager: ObservableObject {
    
    static let shared = ApiManager()
    
    private init() {}
    
    private let baseURL: String = "https://www.themealdb.com/api/json/v1/1/search.php?s="
    
    func searchFor(query: String, completion: @escaping(ApiResult) -> Void) {
        guard let url = URL(string: baseURL + query) else {
            print("Invalid URL")
            return
        }
        print(url)
        
        let task = URLSession.shared.dataTask(with: url) { data, responses, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            let decoder = JSONDecoder()
            
            guard let data = data,
                  let apiResults = try? decoder.decode(ApiResult.self, from: data) else {
                print("Error Decoding")
                return
            }
            completion(apiResults)
        }
        task.resume()
    }
}
