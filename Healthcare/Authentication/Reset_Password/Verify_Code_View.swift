//
//  Verify_Code_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 01/11/2023.
//

import SwiftUI

struct Verify_Code_View: View {
    var body: some View {
       
        ZStack {
            
            
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text("Enter Verification Code")
                  .font(
                    Font.custom("Inter", size: 24)
                      .weight(.bold)
                  )
                  .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                
                
                Text("Enter code that we have sent to your number 08528188*** ")
                  .font(Font.custom("Inter", size: 16))
                  .foregroundColor(.gray)
                  .frame(width: 327, alignment: .topLeading)
                
                
                HStack(alignment: .center) {
                    OTPView()
        
                }
                .padding(.top,32)
                .frame(width: 328, height: 64, alignment: .center)
               
                
                
                
                //MARK: - Verify Button
                
                Button(action: {
                    // Handle login logic here
                    
                    
                }) {
                    
                    Text("Verify")
                    .font(
                    Font.custom("Inter", size: 16)
                    .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .padding(.horizontal)
                .background(Color.mygreen)
                .foregroundColor(.white)
                .cornerRadius(30)
                .padding(.top,40)
            
                
                
                //MARK: - Forgot Password? Button
                
                
                HStack{
                    
                    Text("Didn’t receive the code?")
                        .foregroundStyle(.gray)
                    Button(action: {
                        // Handle login logic here
                        
                        
                    }) {
                        Text(" Resend")
                        .foregroundColor(.mygreen)
                            
                    }
                }
                .padding(0)
                 .frame(width: 328, height: 64, alignment: .center)

                
                
                
            }
            .padding(0)
            .frame(width: 327, alignment: .leading)
            
           
            
            
        }
        .frame(width: 375, height: 812)
        .background(.white)
    }
}

#Preview {
    Verify_Code_View()
}
