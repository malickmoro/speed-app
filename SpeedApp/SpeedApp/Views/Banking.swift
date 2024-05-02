//
//  Banking.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct Banking: View {
    var body: some View {
        
        ScrollView {
            
            VStack {
                Text("Banking")
                    .font(.headline)
                    .padding()
                    .foregroundStyle(.gray)
                
                VStack(spacing: 20) {
                    
                    
                    Button {
                        
                    } label: {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width - 40, height:  UIScreen.main.bounds.width / 4)
                            .cornerRadius(10)
                            .foregroundStyle(.yellow)
                            .overlay {
                                HStack {
                                    Image ("loan")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    
                                    Spacer()
                                    
                                    Text("Loans")
                                        .font(.title)
                                        .fontWeight(.bold)
                                }
                                .padding(20)
                            }
                    }
                    
                    Button {
                        
                    } label: {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width - 40, height:  UIScreen.main.bounds.width / 4)
                            .cornerRadius(10)
                            .foregroundStyle(.brown)
                            .overlay {
                                HStack {
                                    Image ("invest")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    
                                    Spacer()
                                    
                                    Text("Investments")
                                        .font(.title)
                                        .fontWeight(.bold)
                                }
                                .padding(20)
                            }
                    }
                    
                    
                    Button {
                        
                    } label: {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width - 40, height:  UIScreen.main.bounds.width / 4)
                            .cornerRadius(10)
                            .foregroundStyle(.white)
                            .overlay {
                                HStack {
                                    Image ("secure")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    
                                    Spacer()
                                    
                                    Text("Bancassurance")
                                        .font(.title)
                                        .fontWeight(.bold)
                                }
                                .padding(20)
                            }
                    }
                    
                    
                    Button {
                        
                    } label: {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width - 40, height:  UIScreen.main.bounds.width / 4)
                            .cornerRadius(10)
                            .foregroundStyle(ContentViewModel().yellow)
                            .overlay {
                                HStack {
                                    Image ("forex")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    
                                    Spacer()
                                    
                                    Text("Forex Rates")
                                        .font(.title)
                                        .fontWeight(.bold)
                                }
                                .padding(20)
                            }
                        
                    }
                    
                }
                .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    Banking()
}
