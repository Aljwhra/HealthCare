//
//  Profile_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Profile_View: View {
    var body: some View {
        NavigationStack{
            ZStack{
                backgroundView()
                    .ignoresSafeArea()
                
                
                VStack(spacing: 10){
                    Image("p")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(RoundedRectangle(cornerRadius: 60))
                    
                    
                    Text("Amelia Renata")
                        .font(.title3).bold()
                      .foregroundColor(.white)
                    
                }.offset(y:-250)
               
                HStack(spacing: 25){
                    VStack{
                        Image("Heartbeat")
                        Text("Heart rate")
                          .font(
                            Font.custom("Inter", size: 12)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.76, green: 0.95, blue: 0.94))
                        
                        Text("215bpm")
                          .font(
                            Font.custom("Inter", size: 16)
                              .weight(.semibold)
                          )
                          .foregroundColor(.white)
                        
                    }
                    
                   Divider()
                        .background(.white)
                        .frame(height: 100)
                    
                    
                    
                    VStack{
                        Image("Fire")
                        Text("Calories")
                          .font(
                            Font.custom("Inter", size: 12)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.76, green: 0.95, blue: 0.94))
                        
                        Text("756cal")
                          .font(
                            Font.custom("Inter", size: 16)
                              .weight(.semibold)
                          )
                          .foregroundColor(.white)
                        
                    }
                    
                   Divider()
                        .background(.white)
                        .frame(height: 100)
                    
                    
                    VStack{
                        Image("Barbell")
                        Text("Calories")
                          .font(
                            Font.custom("Inter", size: 12)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.76, green: 0.95, blue: 0.94))
                        
                        Text("756cal")
                          .font(
                            Font.custom("Inter", size: 16)
                              .weight(.semibold)
                          )
                          .foregroundColor(.white)
                        
                    }
                    
                    
                }.offset(y:-120)
                
                TheCard()
                    .offset(y:180)
            }
            .navigationBarItems(trailing: Button(action: {}) {Image("Component3")})
        }
    }
}

#Preview {
    Profile_View()
}



struct TheCard:View {
    var body: some View {
        
        VStack(spacing: 15){
            HStack(spacing: 15){
                Image("Heart1")
                .frame(width: 43, height: 43)
                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                .cornerRadius(20)
                
                Text("My Saved")
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.semibold)
                  )

                Spacer()
                
                Image(systemName: "chevron.right")
                
                
            }
            .padding(.horizontal)
            Divider()
                .background(.mygreen)
                .frame(width: 345)
            
            
            HStack(spacing: 15){
                Image("Document")
                .frame(width: 43, height: 43)
                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                .cornerRadius(20)
                
                Text("Appointmnet")
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.semibold)
                  )

                Spacer()
                
                Image(systemName: "chevron.right")
                
                
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            Divider()
                .background(.mygreen)
                .frame(width: 345)
            
            HStack(spacing: 15){
                Image("Wallet")
                .frame(width: 43, height: 43)
                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                .cornerRadius(20)
                
                Text("Payment Method")
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.semibold)
                  )

                Spacer()
                
                Image(systemName: "chevron.right")
                
                
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            Divider()
                .background(.mygreen)
                .frame(width: 345)
            
            HStack(spacing: 15){
                Image("Chat")
                .frame(width: 43, height: 43)
                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                .cornerRadius(20)
                
                Text("FAQs")
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.semibold)
                  )

                Spacer()
                
                Image(systemName: "chevron.right")
                
                
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            Divider()
                .background(.mygreen)
                .frame(width: 345)
            
            
            HStack(spacing: 15){
                Image("Danger Circle")
                .frame(width: 43, height: 43)
                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                .cornerRadius(20)
                
                Text("Logout")
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 1, green: 0.36, blue: 0.36))
                Spacer()
                
                Image(systemName: "chevron.right")
                
                
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
         
            
            
        }
        
        .background(
        Rectangle()
          .foregroundColor(.clear)
          .frame(maxWidth: .infinity)
          .frame(height: 445)
          .background(.white)
          .cornerRadius(30))
        
    }
}


struct backgroundView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color(red: 0.32, green: 0.82, blue: 0.78), location: 0.00),
                    Gradient.Stop(color: Color(red: 0.19, green: 0.68, blue: 0.64), location: 1.00),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0, y: 0.47)
            )
           
            
            
            
        }
        
         
        
    }
}
