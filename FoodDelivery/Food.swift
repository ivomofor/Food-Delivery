//
//  Food.swift
//  FoodDelivery
//
//  Created by ivo on 2021/10/04.
//

import Foundation
import SwiftUI

class Food: Identifiable {
    let id: Int
    let title: String
    let price: Double
    let category: Categories
    
    init(title: String, price: Double, category: Categories, id: Int){
        self.category = category
        self.price = price
        self.title = title
        self.id = id
    }
}
