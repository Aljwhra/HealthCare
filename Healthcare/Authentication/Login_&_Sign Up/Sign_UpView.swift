//
//  Sign_UpView.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 24/10/2023.
//

import SwiftUI

struct Sign_UpView: View {
    
    
    @State private var email = ""
    @State private var password = ""
   // @State private var isChecked = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                VStack(spacing:20){
                    
                    VStack(spacing:20){
                        //MARK: - Text Field
                        Text("sing up")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 20)
                        
                        
                        ZStack{
                            Image(systemName: "person")
                                .resizable()
                                .frame(width:30, height: 30)
                                .padding(.trailing , 290)
                            Text("James Schleifer")
                                .padding(.trailing , 100)
                                .foregroundColor(.black)
                                .bold()
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.mygrey2, lineWidth: 2)
                                            
                                )
                        }
                        
                        ZStack{
                            Image(systemName: "envelope")
                                .resizable()
                                .frame(width:35, height: 30)
                                .padding(.trailing , 290)
                            Text("Jamesschleifer@gmail.com")
                                .padding(.trailing , 10)
                                .foregroundColor(.black)
                                .bold()
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.mygrey2, lineWidth: 2)
                                            
                                )
                        }
                        
                        SecureField("Enter your Password", text: $password)
                            .padding()
                            .background(Color.mygrey1)
                            .cornerRadius(30)
                            .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.mygrey2, lineWidth: 2)
                            )
                        
                        
                        VStack{
                            HStack{
                                Image(systemName: "rectangle")
                                Text("I agree to the medidoc")
                                Button(action: {
                                    // Handle login logic here
                                }) {
                                    Text("Terms of Service")
                                        .foregroundColor(.mygreen)
                                }
                            }
                            HStack{
                                Text("and")
                                
                                Button(action: {
                                    // Handle login logic here
                                }) {
                                    Text("Privacy Policy")
                                        .foregroundColor(.mygreen)
                                }
                            }
                          
                            
                        }
                        
                        
                        Button(action: {
                            // Handle login logic here
                            print("Email: \(email)")
                            print("Password: \(password)")
                        }) {
                            Text("Sign Up")
                                .font(.title2).bold()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding(.all ,10)
                                .background(Color.mygreen)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                        }
                        
                        
                        
                        HStack{
                            Text("Don't have an account ?")
                                .foregroundStyle(.gray)
                            Button(action: {
                                // Handle login logic here
                            }) {
                                Text("Sign Up")
                                    .foregroundColor(.mygreen)
                            }
                            
                        }
                        
                        
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    Sign_UpView()
}
