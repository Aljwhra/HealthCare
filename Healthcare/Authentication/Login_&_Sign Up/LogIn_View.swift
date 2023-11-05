//
//  LogIn_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 23/10/2023.
//

import SwiftUI

struct LogIn_View: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var isLoginSuccessful = false
    @State private var errorMessage = ""
    
    let correctPassword = "12345"
    
    
    @State var isLogIn = false
    @State var isForgotPassword = false
    
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                
                VStack(spacing:20){
                    
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    //MARK: - Text Field
                    
                    VStack(spacing:20){
                        
                        TextField("Email", text: $email)
                            .padding()
                            .background(Color.mygrey1)
                            .cornerRadius(30)
                            .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.mygrey2, lineWidth: 2)
                            )
                        
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.mygrey1)
                            .cornerRadius(30)
                            .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.mygrey2, lineWidth: 2)
                            )
                        
                        
                    }
                    
                    
                    //MARK: - Forgot Password? Button
                    Button(action: {
                        // Handle login logic here
                      isForgotPassword = true
                        
                    }) {
                        Text("Forgot Password?")
                            .foregroundColor(.mygreen)
                    }
                    .padding(.leading,200)
                    .padding(.bottom)
                    .fullScreenCover(isPresented: $isForgotPassword){
                        Reset_Password()
                    }
                    
                    //MARK: - Login Button
                    
                    Button(action: {
                        // Handle login logic here
                
//                            if password == correctPassword {
//                               isLoginSuccessful = true
//                                errorMessage = ""
//                              
//                            } else {
//                                isLoginSuccessful = false
//                                errorMessage = "Incorrect password. Please try again."
//                               
//                            }
                        isLogIn = true
                        
                        
                    }) {
                        Text("Login")
                            .font(.title2).bold()
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.mygreen)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .fullScreenCover(isPresented: $isLogIn){
                       LogIn_Success()
                    }
                    
                    
                    
                    //MARK: - Sign Up Button
                    HStack{
                        Text("Don't have an account ?")
                            .foregroundStyle(.gray)
                        Button(action: {
                            // Handle login logic here
                        }) {
                            Text("Sign Up")
                                .foregroundColor(.mygreen)
                        }
                        
                    } .padding()
                    
                    
                    ZStack{
                        Divider()
                            .frame(width: 135)
                            .padding(.trailing,200)
                        Text("OR")
                            .foregroundStyle(.gray)
                        Divider()
                            .frame(width: 135)
                            .padding(.leading,200)
                    }
                    
                    
                    
                    VStack(spacing: 15){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                               label: {
                            
                            ZStack{
                                
                                Image(systemName: "envelope.circle.fill")
                                    .resizable()
                                    .frame(width:35, height: 35)
                                    .padding(.trailing , 300)
                                Text("Sign in with Google")
                                    .foregroundColor(.black).bold()
                                    .padding()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .background(RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color.mygrey2, lineWidth: 2)
                                                
                                    )
                            }
                            
                        })
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                               label: {
                            
                            ZStack{
                                
                                Image(systemName: "envelope.circle.fill")
                                    .resizable()
                                    .frame(width:35, height: 35)
                                    .padding(.trailing , 300)
                                Text("Sign in with Apple")
                                    .foregroundColor(.black).bold()
                                    .padding()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .background(RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color.mygrey2, lineWidth: 2)
                                                
                                    )
                            }
                            
                        })
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                               label: {
                            
                            ZStack{
                                
                                Image(systemName: "envelope.circle.fill")
                                    .resizable()
                                    .frame(width:35, height: 35)
                                    .padding(.trailing , 300)
                                Text("Sign in with Facebook")
                                    .foregroundColor(.black).bold()
                                    .padding()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .background(RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color.mygrey2, lineWidth: 2)
                                                
                                    )
                            }
                            
                        })
                        
                    }
                    
                } .padding()
            }
            
            
        }
    }
    
    
    
    
}




#Preview {
    LogIn_View()
}
