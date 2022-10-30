//
//  File.swift
//  PillboxApp
//
//  Created by KooK MeeM on 30.10.2022.
//

import Foundation

struct PillTimerConfiguration {
    let pillName: String
    let pillDosage: String
    let description: String
    
    
    
    static func drinkYourPillsNow() -> [PillTimerConfiguration] {
        [ PillTimerConfiguration(pillName: "xanax", pillDosage: "25", description: "initial")
        ]
    }
}
