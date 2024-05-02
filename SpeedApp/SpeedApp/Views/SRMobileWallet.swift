//
//  SRMobileWallet.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import SwiftUI

struct SRMobileWallet: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                    
                    Text("Back")
                }
                .foregroundStyle(ContentViewModel().yellow)
                
                Spacer()
                
            }
            .padding()
            
            Spacer()
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Self Register - Mobile Wallet")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SRMobileWallet()
}

//self.presentationMode.wrappedValue.dismiss()
