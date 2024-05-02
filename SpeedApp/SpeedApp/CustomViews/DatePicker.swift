//
//  DatePicker.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import SwiftUI
import OverlayDatePicker

struct DatePickerCustom: View {
    var prompt: String
    @Binding var dob: String
    @Binding var showPicker: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(prompt)
                .font(.headline)
                .foregroundStyle(ContentViewModel().yellow)
            
            ZStack(alignment: .leading) {
                TextField("Tap to Select Date", text: $dob)
                    .frame(height: 50)
                    .font(.title3)
                    .padding(.horizontal)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(ContentViewModel().yellow, lineWidth: 1))
                    .disabled(true) // Disable the TextField to prevent keyboard appearance
                
                Button(action: {
                    showPicker = true
                }) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 50)
                }
            }
        }
    }
}


#Preview {
    DatePickerCustom(prompt:"", dob: .constant(""), showPicker: .constant(false))
}
