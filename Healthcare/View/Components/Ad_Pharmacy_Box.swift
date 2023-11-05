//
//  Ad_Pharmacy_Box.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Ad_Pharmacy_Box: View {
    var body: some View {
        ZStack{
            HStack(spacing: 17){
                VStack(spacing: 17){
                    Text("Order quickly with\nPrescription")
                        .font(
                            Font.custom("Inter", size: 18)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                    
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        Text("Upload Prescription")
                            .font(
                                Font.custom("Inter", size: 12)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.white)
                            .frame(width: 132, height: 29)
                            .background(.mygreen)
                            .cornerRadius(20)
                    })
                    
                   
                       
                }
                
                Image("6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 130)
                
            }
            .frame(width: 334, height: 139)
        }
        .background(
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 345, height: 145)
            .background(Color(red: 0.91, green: 0.95, blue: 0.95))
            .cornerRadius(10))
    }
}

#Preview {
    Ad_Pharmacy_Box()
}
