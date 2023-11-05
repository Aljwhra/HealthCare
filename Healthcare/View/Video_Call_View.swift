//
//  Video_Call_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 04/11/2023.
//

import SwiftUI

struct Video_Call_View: View {
    var body: some View {
        ZStack{
            
            
            Image("doctor3")
                .resizable()
                .frame(width: 750,height: 900)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 755, height: 812)
              .background(
                LinearGradient(
                  stops: [
                    Gradient.Stop(color: .black.opacity(0), location: 0.00),
                    Gradient.Stop(color: .black.opacity(0.7), location: 1.00),
                  ],
                  startPoint: UnitPoint(x: 0.5, y: 0.5),
                  endPoint: UnitPoint(x: 0.5, y: 1)
                )
              )
            
            
            VStack(alignment: .center, spacing: 50){
                
                VStack{
                    Text("Dr. Marcus Horizon")
                    Text("00:05:24")
                        
                }.foregroundStyle(.white)
                HStack(spacing:10){
                    
                    
                    Image(systemName: "video")
                    
                        .scaledToFit()
                        .font(.title2)
                        .frame(width: 60,height: 60)
                        .foregroundColor(.white)
                        .background(.red.opacity(0.90))
                        .cornerRadius(40)
                    
                    
                    Image(systemName: "phone")
                    
                        .scaledToFit()
                        .font(.title2)
                        .frame(width: 60,height: 60)
                        .foregroundColor(.white)
                        .background(.gray.opacity(0.6))
                        .cornerRadius(40)
                    
                    
                    Image(systemName: "mic")
                    
                        .scaledToFit()
                        .font(.title2)
                        .frame(width: 60,height: 60)
                        .foregroundColor(.white)
                        .background(.gray.opacity(0.6))
                        .cornerRadius(40)
                    
                }
                
                VStack(spacing: 15){
                    Image(systemName: "chevron.up")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Text("Swipe back to menu")
                        .foregroundColor(.white)
                }
            }.offset(y:270)
            
            
            
        }
    }
}

#Preview {
    Video_Call_View()
}
