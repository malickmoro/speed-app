//
//  Payments.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct Payments: View {
    var body: some View {
        VStack (alignment: .center){
            
            Text("Payments")
                .font(.headline)
                .padding()
                .foregroundStyle(.gray)
            
            // LINE 1
            HStack(alignment: .top) {
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "paperplane")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        Text("Funds Transfer")
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(width: 100)
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "creditcard")
                            .resizable()
                            .frame(width: 55, height: 50)
                        
                        Text("Cardless Withdrawal")
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(width: 100)
                
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "candybarphone")
                            .resizable()
                            .frame(width: 45, height: 50)
                        
                        
                        Text("Airtime and Data Bundles")
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(width: 100)
                
                
                
            }
            .padding()
            // LINE 2
            HStack(alignment: .top) {
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "banknote")
                            .resizable()
                            .frame(width: 70, height: 50)
                        
                        Text("Bill Payment")
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(width: 100)
                
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "calendar")
                            .resizable()
                            .frame(width: 60, height: 50)
                        
                        Text("Standing Order")
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(width: 100)
                
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "cedisign.square")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        Text("Ghana.Gov")
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(width: 100)
                
            }
            .padding()
        }
        .font(.headline)
        .foregroundColor(ContentViewModel().yellow)
    }
}

#Preview {
    Payments()
}
