//
//  LogoutAlert.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct LogoutAlert: View {
    @Binding var showAlert: Bool
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        Rectangle()
            .frame(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.width / 2)
            .cornerRadius(20)
            .foregroundStyle(viewModel.yellow)
            .overlay {
                VStack {
                    Image(systemName: "exclamationmark.triangle")
                        .resizable()
                        .frame(width: 60, height: 55)
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    Text("Are you sure you want to logout?")
                        .font(.headline)
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    HStack (spacing: 50){
                        Button {
                            withAnimation {
                                showAlert.toggle()
                                viewModel.reset()
                            }
                        } label: {
                            Text("Yes")
                                .font(.headline)
                                .frame(width: 50)
                                .padding(10)
                                .background{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundStyle(.green)
                                }
                                .foregroundStyle(.white)
                                .shadow(radius: 3)
                        
                        }
                        
                        
                        Button {
                            withAnimation {
                                showAlert.toggle()
                            }
                        } label: {
                             Text("No")
                                .font(.headline)
                                .frame(width: 50)
                                .padding(10)
                                .background{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundStyle(.red)
                                }
                                .foregroundStyle(.white)
                                .shadow(radius: 3)
                        }
                    }
                }
                .padding()
                .overlay{
                    RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 1)
                        .frame(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.width / 2)
                        .foregroundStyle(.black)
                    
                }
            }
        
    }
}

#Preview {
    LogoutAlert(showAlert: .constant(false), viewModel: ContentViewModel())
}
