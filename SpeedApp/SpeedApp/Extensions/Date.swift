//
//  Date.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import Foundation

extension Date {
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: self)
    }
    
    var formattedDate2: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
}
