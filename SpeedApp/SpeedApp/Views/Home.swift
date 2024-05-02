//
//  Home.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct Home: View {
    @ObservedObject var viewModel: ContentViewModel
    var namespace: Namespace.ID
    @State private var showAlert: Bool = false
   
    var body: some View {
        ZStack {
            VStack {
                
                VStack {
                    
                    HStack {
                        Image("UMB")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .matchedGeometryEffect(id: "logo", in: namespace)
                        
                        Spacer()
                        
                        Text(viewModel.greeting.rawValue + " " + (viewModel.user.name))
                            .foregroundStyle(.gray)
                            .font(.headline)
                        
                        Spacer()
                        
                        
                        Button {
                            withAnimation {
                                showAlert.toggle()
                            }
                        } label: {
                            VStack {
                                Image(systemName: "power.circle")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(viewModel.yellow)
                                
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 70, leading: 10, bottom: 15, trailing: 10))
                }
                .background(.black)
                
                
                
                switch viewModel.currentView {
                case .home:
                    Accounts(viewModel: viewModel)
                case .payments:
                    Payments()
                case .profile:
                    Profile()
                case .banking:
                    Banking()
                }
                
                
                Spacer()
                
                
                TabBar(viewModel: viewModel)
                    .shadow(radius: 10)
                
            }
            .sheet(isPresented: $viewModel.showScanner, content: {
                QRCodeScanner(viewModel: viewModel)
            })
            
            if showAlert {
                Color.gray.opacity(0.5)
                LogoutAlert(showAlert: $showAlert, viewModel: viewModel)
            }
        }
        .background(Color(.black))
        .ignoresSafeArea()
            
    }
}

#Preview {
    Home(viewModel: ContentViewModel(), namespace: Namespace().wrappedValue)
}
