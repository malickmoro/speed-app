//
//  SelfRegister.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import SwiftUI

struct SelfRegister: View {
    @StateObject var srVM = SelfRegisterViewModel()
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "person.circle")
                        . resizable()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(ContentViewModel().yellow)
                    
                    Text("Self-Register")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
                
                Spacer()
                
                VStack {
                    NavigationLink {
                        SRMobileBanking(viewModel: srVM)
                    } label: {
                        HStack {
                            Text("Mobile Banking")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                        }
                        .font(.title)
                        .padding()
                        .foregroundStyle(ContentViewModel().yellow)
                    }
                    
                    Divider()
                    
                    NavigationLink {
                        SRMobileWallet()
                    } label: {
                        HStack {
                            Text("Mobile Wallet")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                        }
                        .font(.title)
                        .padding()
                        .foregroundStyle(ContentViewModel().yellow)
                    }
                }
                
                Spacer()
                
                Button {
                    withAnimation {
                        viewModel.currentScreen = .options
                    }
                } label: {
                    Text("Cancel")
                        .font(.title)
                        .foregroundStyle(ContentViewModel().yellow)
                }
            }
        }
    }
}

#Preview {
    SelfRegister(viewModel: ContentViewModel())
}
