//
//  ApiResult.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 07/06/2024.
//

import Foundation

struct ApiResult: Codable {
    let meals: [Meals]
    
}

struct Meals: Codable {
    let strMeal: String
    let strInstructions: String
}
