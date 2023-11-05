//
//  Create_New_Password_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 01/11/2023.
//

import SwiftUI

struct Create_New_Password_View: View {
    
    @State private var password = ""
    @State private var confirmPassword = ""
    @State var iscreatePassword = false
    
    
    var body: some View {
        ZStack {
            
            VStack(alignment: .leading, spacing: 12) {
                
                VStack{
                    Text("Create New Password")
                        .font(
                            Font.custom("Inter", size: 24)
                                .weight(.bold)
                        )
                        .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                        .frame(width: 327, alignment: .topLeading)
                    Text("Create your new password to login")
                        .font(Font.custom("Inter", size: 16))
                        .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
                        .frame(width: 327, alignment: .topLeading)
                }
                .padding(.bottom,40)
                  
                
                //MARK: - Text Field
                
                VStack(spacing:15){
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.mygrey1)
                        .cornerRadius(30)
                        .background(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.mygrey2, lineWidth: 2)
                        )
                    
                    
                    SecureField("Confirm Password", text: $confirmPassword)
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
                  iscreatePassword = true
                    
                }) {
                    Text("Create Password")
                        
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
               
                .background(Color.mygreen)
                .foregroundColor(.white)
                .cornerRadius(30)
                .fullScreenCover(isPresented: $iscreatePassword){
                    Reset_Password()
                }
                .padding(.top,20)
                
                
                
            }
            .padding(0)
            .frame(width: 340, alignment: .leading)
            
            
            
            
            
        }
        .frame(width: 375, height: 812)
        .background(.white)
    }
}

#Preview {
    Create_New_Password_View()
}
