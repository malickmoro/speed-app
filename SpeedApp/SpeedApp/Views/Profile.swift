//
//  Profile.swift
//  SpeedApp
//
//  Created by Malick Moro-Samah on 23/04/2024.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Menu")
                    .font(.headline)
                    .padding()
                    .foregroundStyle(.gray)
                
                
                VStack {
                    Button {
                        
                    } label: {
                        HStack(alignment: .center, spacing: 29) {
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .symbolRenderingMode(.multicolor)
                            
                            Text("My Profile")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                    }
                    .padding()
                    
                    Divider()
                    
                    Button {
                        
                    } label: {
                        HStack(alignment: .center, spacing: 29) {
                            Image(systemName: "paperclip")
                                .resizable()
                                .frame(width: 40, height: 40)
                                
                            Text("Requests")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                    }
                    .padding()
                    
                    Divider()
                    
                    
                    Button {
                        
                    } label: {
                        HStack(alignment: .center, spacing: 20) {
                            Image(systemName: "gearshape.2.fill")
                                .resizable()
                                .frame(width: 50, height: 40)
                                .symbolRenderingMode(.palette)
                            
                            Text("Settings")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                    }
                    .padding()
                    
                    Divider()
                    
                    
                    Button {
                        
                    } label: {
                        HStack(alignment: .center, spacing: 20) {
                            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                .resizable()
                                .frame(width: 50, height: 40)
                                .symbolRenderingMode(.palette)
                            
                            Text("Feedback")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                    }
                    .padding()
                    
                    Divider()
                    
                }
                .foregroundStyle(ContentViewModel().yellow)
                .padding()
            }
        }
    }
}

#Preview {
    Profile()
}
