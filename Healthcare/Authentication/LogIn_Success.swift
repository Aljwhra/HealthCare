//
//  LogIn_Success.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 24/10/2023.
//

import SwiftUI

struct LogIn_Success: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            
         //   ScrollView{
                
                ZStack{
                    
                    
             
            
                    VStack(spacing:20){
                        
                        VStack(spacing:20){
                            //MARK: - Text Field
                            Text("Login")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.bottom, 20)
                            
                            
                            //  Image(systemName: "envelope.fill")
                            TextField("Email", text: $email)
                                .padding()
                                .background(Color.mygrey1)
                                .cornerRadius(30)
                                .background(RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.mygrey2, lineWidth: 2)
                                )
                            
                            
                            SecureField("Password", text: $password)
                            // .textFieldStyle()
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
                        }) {
                            Text("Forgot Password?")
                                .foregroundColor(.mygreen)
                        }
                        
                        .padding(.leading,200)
                        .padding(.bottom)
                        
                        //MARK: - Login Button
                        
                        Button(action: {
                            // Handle login logic here
                            print("Email: \(email)")
                            print("Password: \(password)")
                        }) {
                            Text("Login")
                                .font(.title2).bold()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding(.all ,10)
                                .background(Color.mygreen)
                                .foregroundColor(.white)
                                .cornerRadius(30)
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
                    
                    Color.black
                    .opacity(0.5)
                    .ignoresSafeArea()
                    Rectangle()
                    .frame(width: 350 ,height: 400)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    
                    
                    VStack(spacing: 20){
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width:75, height: 75)
                        Text("Yeay! Welcome Back")
                            .font(.title2)
                            .bold()
                        Text("Once again you login successfully into medidoc app")
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .foregroundColor(.gray)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                               label: {
                            
                            Text("Go to home")
                                .foregroundColor(.white).bold()
                                .frame(width: 260, height: 65)
                                .background(Color.mygreen)
                                .cornerRadius(80)
                        })
                        
                    }
                }
            
          
           // }
        }
    }
}

#Preview {
    LogIn_Success()
}
