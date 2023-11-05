//
//  LogOut_PopUp_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct LogOut_PopUp_View: View {
    var body: some View {
        ZStack{
            Profile_View()
            Color.black
                .opacity(0.5)
                .ignoresSafeArea()
            Rectangle()
                .frame(width: 365 ,height: 400)
                .foregroundColor(.white)
                .cornerRadius(30)
            
            
            // MARK: - Success
            
            VStack(spacing: 20){
                Image("logout")
                    .frame(width: 103.02026, height: 103.02026)
                    .background(Color(red: 0.96, green: 0.97, blue: 1))
                    .cornerRadius(50)
                
                Text("Are you sure to log out of your account?")
                  .font(
                    Font.custom("Inter", size: 20)
                      .weight(.bold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                  .frame(width: 263, alignment: .top)
                


                
                Button(action: {
                   
                },
                       label: {
                    
                    Text("Log Out")
                        .font(.title2)
                        .foregroundColor(.white).bold()
                        .frame(width: 183, height: 56)
                        .background(Color.mygreen)
                        .cornerRadius(80)
                })
                Button(action: {
                   
                },
                       label: {
                    
                    Text("Cancel")
                        .font(.title2)
                        .foregroundColor(.mygreen).bold()
                        .frame(width: 183, height: 56)
                        .background(Color(red: 0.96, green: 0.97, blue: 1))
                        .cornerRadius(80)
                })
                
                
            }
        }
            
            
        }
    }


#Preview {
    LogOut_PopUp_View()
}
