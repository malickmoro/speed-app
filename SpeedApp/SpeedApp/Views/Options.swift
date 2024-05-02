//
//  Options.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import SwiftUI

struct Options: View {
    @ObservedObject var viewModel: ContentViewModel
    var namespace: Namespace.ID
    
    var body: some View {
        ZStack {
            ContentViewModel().yellow.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("UMB")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .matchedGeometryEffect(id: "icon", in: namespace)
                
                Spacer().frame(height: 100)
                
                
                VStack (alignment: .center){
                    HStack {
                        Button {
                            withAnimation {
                                viewModel.currentScreen = .login
                            }
                        } label: {
                            VStack(alignment: .center, spacing: 20) {
                                Image(systemName: "lock")
                                    . resizable()
                                    .frame(width: 35, height: 40)
                                    .foregroundStyle(ContentViewModel().yellow)
                                
                                Text("Login")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                
                            }
                            .frame(width: UIScreen.main.bounds.width / 2 - 65, height: 100)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.black)
                            }
                        }
                        
                        
                        Button {
                            withAnimation {
                                viewModel.currentScreen = .selfRegister
                            }
                        } label: {
                            VStack(alignment: .center, spacing: 20) {
                                Image(systemName: "person.circle")
                                    . resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(ContentViewModel().yellow)
                                
                                Text("Self-Register")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                
                            }
                            .frame(width: UIScreen.main.bounds.width / 2  - 65, height: 100)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    
                    
                    Button {
                        withAnimation {
                            viewModel.currentScreen = .products
                        }
                    } label: {
                        HStack(alignment: .center, spacing: 20) {
                            Image(systemName: "bag.fill")
                                . resizable()
                                .frame(width: 40, height: 40)
                                .foregroundStyle(ContentViewModel().yellow)
                            
                            Text("Products")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
                        }
                        .frame(width: UIScreen.main.bounds.width - 60, height: 60)
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.black)
                        }
                    }
                    
                    Button {
                        withAnimation {
                            viewModel.currentScreen = .locator
                        }
                    } label: {
                        HStack(alignment: .center, spacing: 23) {
                            Image(systemName: "mappin.and.ellipse")
                                . resizable()
                                .frame(width: 40, height: 40)
                                .foregroundStyle(ContentViewModel().yellow)
                            
                            Text("Locator")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
   
                        }
                        .frame(width: UIScreen.main.bounds.width - 60, height: 60)
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.black)
                        }
                    }
                    
                    
                    Spacer()
                    
                    Button {
                        withAnimation {
                            viewModel.currentScreen = .contactUs
                        }
                    } label: {
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName: "phone.badge.waveform.fill")
                                . resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.black)
                            
                            Text("Contact Us")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                               
                               
                        }
                    }
                    .padding(.bottom, 30)
                }
                .padding(.horizontal)
               
            }
            .padding(.top, 100)
            .ignoresSafeArea()
            .transition(.slide)
            
        }
    }
}

#Preview {
    Options(viewModel: ContentViewModel(), namespace: Namespace().wrappedValue)
}
