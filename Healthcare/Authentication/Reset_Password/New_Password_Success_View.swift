//
//  New_Password_Success_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 02/11/2023.
//

import SwiftUI

struct New_Password_Success_View: View {
    
    @State var isCreateNewPassword = false
    
    var body: some View {
        ZStack{
            
           
            Create_New_Password_View()
                .padding(.top,-150)
               
            Color.black
              .opacity(0.5)
              .ignoresSafeArea()
              Rectangle()
              .frame(width: 330 ,height: 400)
              .foregroundColor(.white)
              .cornerRadius(30)
            
              
    // MARK: - Success
              
              VStack(spacing: 20){
                  Image(systemName: "checkmark.circle.fill")
                      .resizable()
                      .foregroundStyle(.mygreen)
                      .frame(width: 100, height: 100)
                  
                  Text("Success")
                      .font(.title2)
                      .bold()
                  Text("You have successfully reset your password.")
                    .font(Font.custom("Inter", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
                    .frame(width: 263, alignment: .top)
                  
                  Button(action: {
                      isCreateNewPassword = true
                  },
                         label: {
                      
                      Text("Go to home")
                          .foregroundColor(.white).bold()
                          .frame(width: 260, height: 65)
                          .background(Color.mygreen)
                          .cornerRadius(80)
                  })
                  .fullScreenCover(isPresented: $isCreateNewPassword){
                      Home_View()
                  }
                  
              }
          }
    }
}

#Preview {
    New_Password_Success_View()
}
