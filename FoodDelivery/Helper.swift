//
//  Helper.swift
//  FoodDelivery
//
//  Created by ivo on 2021/10/04.
//

import Foundation

enum Categories {
    case burger
    case pasta
    case pizza
    case dessert
}

func filterData(by category: Categories) -> [Food]{
    var filteredArray = [Food]()
    for food in foodData {
        if food.category == category {
            filteredArray.append(food)
        }
    }
    return filteredArray
}
func categorystring(for category: Categories) -> String {
    switch category {
    case .burger:
        return "Burger"
    case .dessert:
        return "Desserts"
    case .pasta:
        return "Pasta"
    case .pizza:
        return "Pizza"
    }
}
