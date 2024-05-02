//
//  TabBar.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct TabBar: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            
            HStack{
                
                Spacer()
                
                Button {
                    withAnimation(.easeInOut) {
                        viewModel.currentView = .home
                    }
                } label: {
                    Image(systemName: viewModel.currentView == .home ? "house.fill" : "house")
                        .resizable()
                        .frame(width: 35, height: 30)
                }
               
                Spacer()
                
                Button {
                    withAnimation(.easeInOut) {
                        viewModel.currentView = .payments
                    }
                } label: {
                    Image(systemName: viewModel.currentView == .payments ? "cedisign.circle.fill" : "cedisign.circle")
                        .resizable()
                        .frame(width: 32, height: 30)
                        .transition(.scale)
                }
                
                Spacer()

                Image("")
                    .resizable()
                    .frame(width: 30, height: 30)
                
                Spacer()

                Button {
                    withAnimation(.easeInOut) {
                        viewModel.currentView = .banking
                    }
                } label: {
                    Image(systemName: viewModel.currentView == .banking ? "newspaper.fill" : "newspaper")
                        .resizable()
                        .frame(width: 32, height: 30)
                }
                
                Spacer()

                Button {
                    withAnimation(.easeInOut) {
                        viewModel.currentView = .profile
                    }
                } label: {
                    Image(systemName: viewModel.currentView == .profile ? "person.fill" : "person")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                Spacer()
                
            }
            .frame(width: UIScreen.main.bounds.width)
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 0))
            .background(viewModel.yellow)
            .foregroundStyle(.black)
            .cornerRadius(20)
            .overlay {
                Button {
                    viewModel.showScanner.toggle()
                } label: {
                    Image(systemName: "qrcode")
                        .resizable()
                        .foregroundStyle(viewModel.yellow)
                        .frame(width: 30, height: 30)
                        .padding()
                        .background(.black)
                        .clipShape(Circle())
                        .offset(y: -30)
                        .shadow(radius: 10)
                }
                .overlay{
                    Circle().stroke(lineWidth: 2)
                        .foregroundStyle(viewModel.yellow)
                        .offset(y: -30)
                }
            }
            
        }.ignoresSafeArea()
    }
}

#Preview {
    TabBar(viewModel: ContentViewModel())
}
