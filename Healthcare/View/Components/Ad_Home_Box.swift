//
//  Ad_Home_Box_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 02/11/2023.
//

import SwiftUI

struct Ad_Home_Box: View {
    var body: some View {
        ZStack{
            VStack(alignment:.leading , spacing: 10){
                HStack(spacing: 30){
                    Text("Early protection for\nyour family health")
                        .font(
                            Font.custom("Inter", size: 18)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                    Image("7xm")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 91, height: 131)
                    
                        .background(
                            Circle()
                                .stroke(.white, lineWidth: 30)
                                .clipShape(RoundedRectangle(cornerRadius: 60))
                                .frame(width: 110)
                            
                        )
                    
                }
                
                .background(
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 335, height: 145)
                        .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                        .cornerRadius(10)
                )
                
                VStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        Text("Learn more")
                            .font(
                                Font.custom("Inter", size: 12)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.white)
                            .frame(width: 97, height: 29)
                            .background(.mygreen)
                            .cornerRadius(20)
                    })
                    
                    
                } .padding(.top, -40)
                  
                           
                
            }
        }
    }
}

#Preview {
    Ad_Home_Box()
}
