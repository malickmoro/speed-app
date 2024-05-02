//
//  Login.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct Login: View {
    @ObservedObject var viewModel: ContentViewModel
    @State var isAnimating = false
    @State var showError = false
    @State var isShowingPassword: Bool = false
    @FocusState var isFieldFocus: FieldToFocus?
    
    var namespace: Namespace.ID
    
    var body: some View {
        ZStack {
            VStack (spacing: 0){
                HStack {
                    Spacer()
                    
                    Image("UMB")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    Spacer()
                }
                .padding(.top, 30)
                .background(.black)
                
                HStack {
                    Button {
                        withAnimation {
                            viewModel.currentScreen = .options
                        }
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .foregroundStyle(.black)
                            .frame(width: 25, height: 20)
                            .fontWeight(.bold)
                            .padding()
                    }
                    
                    Spacer()
                }

                
                Text("Login")
                    .font(.system(size: 50, weight: .semibold, design: .rounded))
                    .foregroundStyle(.black)
                    .padding(.bottom, 30)
                
                
                VStack (spacing: 15){
                    VStack (alignment: .leading, spacing: 3){
                        Text("Username")
                            .font(.headline)
                            .foregroundStyle(.black)
                        
                        TextField("",text: $viewModel.username)
                            .font(.title3)
                            .foregroundStyle(.black)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                    .foregroundStyle(.black)
                                    .cornerRadius(10)
                            }
                    }
                    .padding(.horizontal)
                    
                    VStack (alignment: .leading, spacing: 3){
                        Text("Password")
                            .font(.headline)
                            .foregroundStyle(.black)
                        
                        Group {
                            if isShowingPassword {
                                HStack {
                                    TextField("",text: $viewModel.password)
                                        .focused($isFieldFocus, equals: .textField)
                                        .font(.title3)
                                    
                                    Image(systemName: "eye.slash")
                                        .fontWeight(.bold)
                                        .onTapGesture {
                                            print("Toggling password visibility. Current password: \(viewModel.password)")
                                            isShowingPassword.toggle()
                                            isFieldFocus = .secureField
                                        }
                                }
                            } else {
                                HStack {
                                    SecureField("", text: $viewModel.password)
                                        .focused($isFieldFocus, equals: .secureField)
                                        .foregroundStyle(.black)
                                        .font(.title3)
                                    
                                    Image(systemName: "eye")
                                        .fontWeight(.bold)
                                        .onTapGesture {
                                            print("Toggling password visibility. Current password: \(viewModel.password)")
                                            isShowingPassword.toggle()
                                            isFieldFocus = .textField
                                        }
                                }
                            }
                        }
                        .foregroundStyle(.black)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                .foregroundStyle(.black)
                                .cornerRadius(10)
                        }
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                       
                        
                    }
                    .padding(.horizontal)
                        
                        Button {
                            
                            withAnimation {
                                if viewModel.validateUser() {
                                    isAnimating.toggle()
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                                        viewModel.currentScreen = .home
                                    }
                                } else {
                                    isAnimating.toggle()
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                        showError.toggle()
                                        isAnimating.toggle()
                                    }
                                }
                            }
                        } label: {
                            Text("Login")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .frame(width: UIScreen.main.bounds.width - 30, height: 60)
                                .background {
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(.black)
                                }
                        }
                        .padding()
                        
                        Button {
                            
                        } label: {
                            Text("Forgotten Password?")
                                .font(.headline)
                                .foregroundStyle(.black)
                        }
                    }
                
                
                Spacer()
            }
            .disabled(isAnimating || showError ? true : false)
            .onChange(of: isShowingPassword) { result in
                isFieldFocus = isShowingPassword ? .textField : .secureField
            }
            
            if isAnimating {
                Color.black.opacity(0.5)
                Loading()
            }
            
            if showError {
                Color.black.opacity(0.5)
                Error(showAlert: $showError)
            }
            
        }
        .ignoresSafeArea()
        .background(viewModel.yellow)
    }
    
    enum FieldToFocus {
        case secureField, textField
    }
}

#Preview {
    Login(viewModel: ContentViewModel(), namespace: Namespace().wrappedValue)
}
