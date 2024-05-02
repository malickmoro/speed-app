//
//  Error.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct Error: View {
    @Binding var showAlert: Bool
    
    var body: some View {
        Rectangle()
            .frame(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.width / 2)
            .cornerRadius(20)
            .foregroundStyle(ContentViewModel().yellow)
            .overlay {
                VStack {
                    Spacer()
                    
                    Text("Invalid Username or Password !")
                        .font(.headline)
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    HStack (spacing: 50){
                        Button {
                            withAnimation {
                                showAlert.toggle()
                            }
                            
                        } label: {
                            Text("Try Again")
                                .font(.headline)
                                .frame(width: 100)
                                .padding(10)
                                .background{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundStyle(.black)
                                }
                                .foregroundStyle(.white)
                        }
                    }
                }
                .overlay{
                    RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 1)
                        .frame(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.width / 2)
                        .foregroundStyle(.black)
                }
                .padding()
            }
        
    }
}

#Preview {
    Error(showAlert: .constant(false))
}
