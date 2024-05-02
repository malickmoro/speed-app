//
//  LoadingView.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct Loading: View {
    @State private var isAnimating = false
    
    var body: some View {
        
        Image("UMB") // Replace "photo" with your image name
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .scaleEffect(isAnimating ? 1.5 : 1)
            .animation(Animation.easeInOut(duration: 0.75).repeatForever(autoreverses: true), value: isAnimating)
            .onAppear() {
                self.isAnimating = true
            }
    }
}


#Preview {
    Loading()
}
