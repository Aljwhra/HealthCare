//
//  Payment_Success_Cart_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Payment_Success_Cart_View: View {
    
    @State var isPaymentSuccess = false
    
    var body: some View {
        ZStack{
            My_Cart_View()
            Color.black
                .opacity(0.5)
                .ignoresSafeArea()
            Rectangle()
                .frame(width: 365 ,height: 400)
                .foregroundColor(.white)
                .cornerRadius(30)
            // MARK: - Success
            
            VStack(spacing: 20){
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .foregroundStyle(.mygreen)
                    .frame(width: 100, height: 100)
                
                Text("Payment Success")
                    .font(.title2)
                    .bold()
                Text("Your payment has been successful, you can have a consultation session with your trusted doctor")
                    .font(.callout)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.gray)
                  .frame(width: 273, alignment: .top)
                


                
                Button(action: {
                    isPaymentSuccess = true
                },
                       label: {
                    
                    Text("Back to Home")
                        .font(.title2)
                        .foregroundColor(.white).bold()
                        .frame(width: 260, height: 65)
                        .background(Color.mygreen)
                        .cornerRadius(80)
                })
                .fullScreenCover(isPresented: $isPaymentSuccess){
                    Home_View()
                }
                
            }
        }
    }
}

#Preview {
    Payment_Success_Cart_View()
}
