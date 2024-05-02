//
//  CheckBox.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import SwiftUI

struct Checkbox: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Image(systemName: isChecked ? "checkmark.square.fill" : "square")
            .resizable()
            .frame(width: 30, height: 30)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.3)) {
                    self.isChecked.toggle()
                }
            }
            .foregroundColor(ContentViewModel().yellow)
    }
}

#Preview {
    Checkbox(isChecked: .constant(true))
}
