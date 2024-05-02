//
//  SplashScreen.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct SplashScreen: View {
    @ObservedObject var viewModel: ContentViewModel
    @State var done: Bool = false
    var namespace: Namespace.ID
    
    var body: some View {
        VStack {
            if done {
                
                Options(viewModel: viewModel, namespace: namespace)
                    .onAppear {
                        viewModel.currentScreen = .options
                    }
                
            } else {
                VStack {
                    Spacer()
                    
                    Image("UMB")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .matchedGeometryEffect(id: "icon", in: namespace)
                    
                    Spacer()
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        withAnimation(.bouncy(duration: 1.2)){
                            done.toggle()
                        }
                    }
                }
            }
          
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(ContentViewModel().yellow)
        .ignoresSafeArea()
    }
}


#Preview {
    SplashScreen(viewModel: ContentViewModel(), namespace: Namespace().wrappedValue)
}
