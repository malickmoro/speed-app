//
//  SRMobileBanking.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 24/04/2024.
//

import SwiftUI
import OverlayDatePicker

struct SRMobileBanking: View {
    @ObservedObject var viewModel: SelfRegisterViewModel
    @StateObject var phoneVM = PhoneNumberViewModel()
    @Environment(\.presentationMode) var presentationMode
    @State var accountNumber: String = ""
    @State var mobileNumber: String = ""
    @State var emailAddress: String = ""
    @State private var showPicker: Bool = false
    @State private var agreed: Bool = false
    @State private var showTerms: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                        
                        Text("Back")
                    }
                    .foregroundStyle(ContentViewModel().yellow)
                    
                    Spacer()
                    
                }
                .padding()
                
                
                VStack (spacing: 50){
                    TextFieldCustom(prompt: "UBA Account Number", text: $accountNumber)
                    
                    PhoneNumber(viewModel: phoneVM)
                    
                    DatePickerCustom(prompt: "Date of Birth / Date de Naissance", dob: $viewModel.dob, showPicker: $showPicker)
                    
                    TextFieldCustom(prompt: "Email Address", text: $emailAddress)
                        .keyboardType(.emailAddress)
                    
                    HStack(spacing: 3) {
                        Checkbox(isChecked: $agreed)
                            .padding(.trailing, 10)
                        
                        Text("I agree to the")
                            .font(.headline)
                            .foregroundStyle(.gray)
                        
                        Button(action: {
                            showTerms.toggle()
                        }) {
                            Text("Terms and Conditions")
                                .foregroundColor(ContentViewModel().yellow)
                                .font(.headline)
                                .underline()
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical)
                    
                    
                }
                .padding()
                
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Submit")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                            .frame(width: UIScreen.main.bounds.width - 40, height: 60)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(ContentViewModel().yellow)
                            }
                    }
//                    
//                    Spacer()
//                    
//                    Button {
//                        
//                        // RESET
//                        self.presentationMode.wrappedValue.dismiss()
//                        
//                    } label: {
//                        Text("Cancel")
//                            .font(.title3)
//                            .fontWeight(.bold)
//                            .foregroundStyle(.black)
//                            .frame(width: UIScreen.main.bounds.width / 2 - 60, height: 60)
//                            .background {
//                                RoundedRectangle(cornerRadius: 10)
//                                    .foregroundColor(.brown)
//                            }
//                    }
                }
                .padding()
                
                Spacer()
                
                
                
                
            }
            .overlay {
                OverlayDatePicker(isPresented: $showPicker, date: viewModel.dobRaw) { date in
                    viewModel.dob = date?.formattedDate ?? Date().formattedDate
                    viewModel.dobRaw = date
                }
                .accentColor(ContentViewModel().yellow)
            }
            .navigationBarBackButtonHidden(true)
            .navigationTitle("Self Register - Mobile Banking")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SRMobileBanking(viewModel: SelfRegisterViewModel())
}
