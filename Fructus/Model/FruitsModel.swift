//
//  FruitsModel.swift
//  Fructus
//
//  Created by Prathap Reddy on 19/09/23.
//

import SwiftUI

// MARK: - FRUITS DATA MODEl

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
