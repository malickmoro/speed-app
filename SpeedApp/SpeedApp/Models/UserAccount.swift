//
//  Account.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import Foundation

struct User {
    let name: String
    let accounts: [Account]
}

struct Account: Identifiable {
    let id: String
    let type: String
    let accountnumber: String
    let balance: Double
    let currency: currency
}

enum currency: String {
    case dollar = "$"
    case cedi = "GH₵"
    case pounds = "£"
    case euro = "€"
    case yen = "¥"
}


