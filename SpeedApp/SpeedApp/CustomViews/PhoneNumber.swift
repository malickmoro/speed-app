//
//  PhoneNumber.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//
import SwiftUI

struct PhoneNumber: View {
    @ObservedObject var viewModel: PhoneNumberViewModel
    @FocusState private var phoneNumberIsFocused: Bool
    
    var body: some View {
        HStack {
            Menu {
                ForEach(viewModel.countries) { country in
                    Button(action: {
                        self.viewModel.selectedCountry = country
                    }) {
                        Text("\(country.name) \(country.dialCode)")
                            
                    }
                }
            } label: {
                HStack {
                    Text("\(viewModel.selectedCountry?.dialCode ?? "")")
                        .foregroundStyle(ContentViewModel().yellow)
                    
                    Image(systemName: "chevron.down")
                }
                .foregroundStyle(Color.black)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
            }
            
            TextField("Phone Number", text: Binding(
                get: { viewModel.phoneNumber },
                set: { newValue in
                    viewModel.phoneNumber = String(newValue.prefix(10)) // Ensure we don't go over 10 digits
                    if newValue.count == 10 {
                        // Logic to run right when we hit 10 digits
                        phoneNumberIsFocused = false // Dismiss the keyboard
                    }
                }
            ))
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(5)
            .keyboardType(.numberPad)
            .focused($phoneNumberIsFocused)
        }
        .padding(7)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(ContentViewModel().yellow, lineWidth: 0.5)
        )
    }
}


#Preview {
    PhoneNumber(viewModel: PhoneNumberViewModel())
}
