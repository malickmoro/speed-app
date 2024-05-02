//
//  Country.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import Foundation

struct Country: Identifiable {
    let id = UUID()
    let name: String
    let dialCode: String
}
