//
//  LogIn_Success.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 24/10/2023.
//

import SwiftUI

struct LogIn_Success: View {
    
    @State var isLogInSuccess = false
    
    
    var body: some View {
        NavigationStack{
            
                ZStack{
                    
                  LogIn_View()
             
                  Color.black
                    .opacity(0.5)
                    .ignoresSafeArea()
                    Rectangle()
                    .frame(width: 350 ,height: 400)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    
          // MARK: - Success
                    
                    VStack(spacing: 20){
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .foregroundStyle(.mygreen)
                            .frame(width: 100, height: 100)
                        
                        Text("Yeay! Welcome Back")
                            .font(.title2)
                            .bold()
                        Text("Once again you login successfully into medidoc app")
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            isLogInSuccess = true
                        },
                               label: {
                            
                            Text("Go to home")
                                .foregroundColor(.white).bold()
                                .frame(width: 260, height: 65)
                                .background(Color.mygreen)
                                .cornerRadius(80)
                        })
                        .fullScreenCover(isPresented: $isLogInSuccess){
                            Home_View()
                        }
                        
                    }
                }
        }
    }
}

#Preview {
    LogIn_Success()
}
