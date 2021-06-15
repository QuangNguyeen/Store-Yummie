//
//  DishModel.swift
//  Yummie
//
//  Created by Quang Nguyen on 6/15/21.
//

import Foundation

struct Dish {
    let id, name, description, image: String?
    let calories: Double?
    
    var formattedCalories: String {
        return String(format: "%2f calories", calories ?? 0)
    }
}
