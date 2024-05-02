//
//  PhoneNumberViewModel.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import Foundation

class PhoneNumberViewModel: ObservableObject {
    @Published var countries: [Country] = [
        Country(name: "Benin", dialCode: "+229"),
        Country(name: "Burkina Faso", dialCode: "+226"),
        Country(name: "Cabo Verde", dialCode: "+238"),
        Country(name: "Canada", dialCode: "+1"),
        Country(name: "Cote D’Ivoire", dialCode: "+225"),
        Country(name: "Gambia", dialCode: "+220"),
        Country(name: "Ghana", dialCode: "+233"),
        Country(name: "Guinea", dialCode: "+224"),
        Country(name: "Guinea-Bissau", dialCode: "+245"),
        Country(name: "Liberia", dialCode: "+231"),
        Country(name: "Mali", dialCode: "+223"),
        Country(name: "Niger", dialCode: "+227"),
        Country(name: "Nigeria", dialCode: "+234"),
        Country(name: "Senegal", dialCode: "+221"),
        Country(name: "Sierra Leone", dialCode: "+232"),
        Country(name: "Togo", dialCode: "+228"),
        Country(name: "United States", dialCode: "+1"),
    ]
    
    @Published var selectedCountry: Country? = nil
    @Published var phoneNumber: String = ""
    
    // Initialize with a default "Select Country" option or similar
    init() {
        selectedCountry = Country(name: "Select Country", dialCode: "N/A")
    }
    
    var fullPhoneNumber: String {
        guard let dialCode = selectedCountry?.dialCode, !phoneNumber.isEmpty else {
            return ""
        }
        return "\(dialCode)\(phoneNumber)"
    }
}
