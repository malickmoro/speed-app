//
//  AccountCard.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct AccountCard: View {
        
    var accountType: String?
    var balance: Double?
    var accountNumber: String?
    var symbol: String?
    
    var body: some View {
       Rectangle()
            .frame(width: UIScreen.main.bounds.width - 60, height: 150)
            .foregroundStyle(ContentViewModel().yellow)
            .cornerRadius(10)
            .shadow(radius: 2)
            .overlay {
                VStack(alignment: .leading) {
                    HStack (alignment: .top){
                        
                        VStack(alignment: .leading) {
                            Text(accountType ?? "Null")
                                .font(.headline)
                                .foregroundStyle(.black)

                            Text(accountNumber ?? "Null")
                                .font(.subheadline)
                                .foregroundStyle(.black)
                        
                        }
                        
                        Spacer()
                        
                        Image(systemName: "gear")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                        
                        
                    }
                    
                    .background(ContentViewModel().yellow)
                    .cornerRadius(5)
                    
                    Spacer()
                    
                    HStack {
                        HStack (spacing: 4){
                            Text(symbol ?? "$")
                            
                            Text("\(balance?.toCurrency() ?? "0.00")")
                                
                        }
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        
                        Spacer()
                        
                        
                        Button {
                            
                        } label: {
                            Text("More")
                                .padding(7)
                                .background {
                                    RoundedRectangle(cornerRadius: 6).stroke(lineWidth: 1)
                                }
                                .foregroundStyle(.black)
                        }
                        
                    }
                    
                }
                .padding()
            }
    }
}

#Preview {
    AccountCard()
}
