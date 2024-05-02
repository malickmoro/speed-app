//
//  TextField.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import SwiftUI

struct TextFieldCustom: View {
    var prompt: String
    @Binding var text: String
    @FocusState private var isTextFieldActive: Bool
    @State private var selected: Bool = false

    

    var body: some View {
    
            VStack(alignment: .leading, spacing: 5) {
                Text(prompt) // Use prompt for the label
                    .font(.headline)
                    .foregroundStyle(ContentViewModel().yellow)
                
                if #available(iOS 17.0, *) {
                    TextField("", text: $text) // Use an empty placeholder for the TextField
                        .frame(height: 50)
                        .font(.title3)
                        .padding(.horizontal)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(selected ? ContentViewModel().yellow : ContentViewModel().yellow, lineWidth: 1))
                    
                        .frame(maxWidth: .infinity) // Ensure the TextField extends to max available width
                        .focused($isTextFieldActive)
                        .onChange(of: isTextFieldActive) {
                            withAnimation (.snappy) {
                                selected.toggle()
                            }
                        }
                } else {
                    // Fallback on earlier versions
                }
        }
    }
}
#Preview {
    TextFieldCustom(prompt: "", text: .constant(""))
}
