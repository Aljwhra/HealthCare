//
//  LogIn_SignUp_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 22/10/2023.
//

import SwiftUI

struct LogIn_SignUp_View: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                VStack{
                    Image(systemName: "cross")
                        .resizable()
                        .frame(width:100, height: 100)
                        .foregroundColor(.mygreen)
                    Text("Swift  معسكر")
                        .font(.title)
                        .bold()
                        .foregroundColor(.mygreen)
                }
                .padding(.bottom)
                
                VStack(){
                    
                    Text("Let's get started!")
                        .font(.title).bold()
                        .padding(.bottom, 5)
                    Text("Login to enjoy the featuers we've provided, and stay healthy!")
                        .multilineTextAlignment(.center)
                        .font(.title3)
                        .foregroundColor(.gray)
                    
                }
                .padding(.bottom,50)
                
                
                NavigationLink {
                    LogIn_View()
                } label: {
                    
                    Text("Login")
                        .foregroundColor(.white).bold()
                        .frame(width: 263, height: 56)
                        .background(Color.mygreen)
                        .cornerRadius(80)
                    
                }
                
                NavigationLink{
                   Sign_UpView()
                } label: {
                    
                    Text("Sign Up")
                        .foregroundColor(.mygreen).bold()
                        .frame(width: 262, height: 55)
                        .cornerRadius(30)
                        .background(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.mygreen, lineWidth: 2)
                        )
                }
                
                
            }.padding()
            
            
        }
    }
        
}

#Preview {
    LogIn_SignUp_View()
}
