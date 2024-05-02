//
//  ContentView.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct ContentView: View {
    @Namespace var namespace
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            switch viewModel.currentScreen {
            case .options:
                Options(viewModel: viewModel, namespace: namespace)
            case .login:
                Login(viewModel: viewModel, namespace: namespace)
            case .home:
                Home(viewModel: viewModel, namespace: namespace)
            case .splashscreen:
                SplashScreen(viewModel: viewModel, namespace: namespace)
            case .selfRegister:
                SelfRegister(viewModel: viewModel)
            case .locator:
                Locator()
            case .contactUs:
                ContactUs()
            case .products:
                Products()
            }
        }
        .ignoresSafeArea()

    }
}

#Preview {
    ContentView()
}
