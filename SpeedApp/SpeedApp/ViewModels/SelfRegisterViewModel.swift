//
//  SelfRegisterViewModel.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import Foundation

class SelfRegisterViewModel: ObservableObject {
    @Published var currentScreen: SRViews = .mobileBanking
    @Published var dobRaw: Date?
    @Published var dob: String = ""
}

extension SelfRegisterViewModel {
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
}
