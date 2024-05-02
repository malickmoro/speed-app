//
//  QRCodeScanner.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import SwiftUI
import CodeScanner

struct QRCodeScanner: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HStack {
                    
                    Spacer()
                    
                    Button {
                        viewModel.showScanner.toggle()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                }
                .padding()
                
                Text("Scan To Pay")
                    .font(.headline)
                    .foregroundStyle(.gray)
                
                
   
                 
                CodeScannerView(codeTypes: [.qr]) { response in
                    if case let .success(result) = response {
                        viewModel.scannedCode = result.string
                       // isPresentingScanner = false
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.width / 1.5)
                .foregroundStyle(.gray)
                .cornerRadius(20)
                .padding(.top, 30)
                
                
                
                Circle()
                    .foregroundStyle(viewModel.yellow)
                    .frame(width: 70, height: 70)
                    .padding()
                    .overlay {
                        Text("OR")
                            .font(.headline)
                            .foregroundStyle(.black)
                    }
                
                
                VStack (alignment: .leading){
                    Text("Input Account Number")
                        .font(.headline)
                        .foregroundStyle(.gray)
                    
                    TextField(text: $viewModel.enteredAccount, prompt: Text("Enter Account Number")) {
                        
                    }
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                            .cornerRadius(10)
                            .foregroundStyle(.gray)
                    }
                    
                    .foregroundStyle(.white)
                }
                .padding()
                
                Spacer()
                
                
                
                
            }
            .padding()
        }
    }
}

#Preview {
    QRCodeScanner(viewModel: ContentViewModel())
}
