//
//  Accounts.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct Accounts: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Accounts")
                    .font(.headline)
                    .padding()
                    .foregroundStyle(.gray)
            }
            
            ForEach(viewModel.user.accounts) { account in
                AccountCard(accountType: account.type,
                            balance: account.balance, accountNumber: account.accountnumber, symbol: account.currency.rawValue)
            }
            
        }
    }
}

#Preview {
    Accounts(viewModel: ContentViewModel())
}
