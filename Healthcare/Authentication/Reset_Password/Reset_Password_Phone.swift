//
//  Reset_Password_Phone.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 01/11/2023.
//

import SwiftUI

struct Reset_Password_Phone: View {
    
    @State private var phone = ""
    @State var isResetPasswordPhone = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 19) {
            
            TextField("Phone", text: $phone)
                .keyboardType(.numberPad)
                .padding()
                .background(Color.mygrey1)
                .cornerRadius(30)
                .background(RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.mygrey2, lineWidth: 2)
                )
            
            
            
            //MARK: - Login Button
            
            Button(action: {
                // Handle login logic here
                isResetPasswordPhone = true
            }) {
                Text("Reset Password")
                    .font(.title2).bold()
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .padding(.horizontal)
            .background(Color.mygreen)
            .foregroundColor(.white)
            .cornerRadius(30)
            .fullScreenCover(isPresented:$isResetPasswordPhone){
                Verify_Code_View()
            }
        }
        .padding(0)
        .frame(width: 327, alignment: .leading)
    }
    
}

#Preview {
    Reset_Password_Phone()
}
