//
//  Header_Doctor_Detail.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 03/11/2023.
//

import SwiftUI

struct Header_Doctor_Detail: View {
    var body: some View {
        HStack{
            
    
            Image("doctor1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 124, height: 120 )
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.trailing,70)
                .frame(width: 70, height: 55)
            
            
            VStack(alignment: .leading ){
                Text("Dr. Marcus Horizon")
                    .font(
                        Font.custom("Inter", size: 18)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                    .padding(.bottom,3)
                Text("specialty")
                    .font(
                        Font.custom("Inter", size: 12)
                            .weight(.medium)
                    )
                    .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                
                
                VStack(alignment: .leading , spacing: 10){
                    HStack(spacing: 2){
                        Image("Star")
                        Text("4,7")
                            .font(
                                Font.custom("Inter", size: 8)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.1, green: 0.6, blue: 0.56))
                        
                    }.background(
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 28, height: 13)
                            .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                            .cornerRadius(2))
                    
                    HStack(spacing: 3){
                        Image("Location")
                        
                        Text("800m away")
                            .font(
                                Font.custom("Inter", size: 8)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                    }
                    
                } .frame(width: 70, height: 55)
                
            }.padding(0)
            
            
            
        }
    }
}

#Preview {
    Header_Doctor_Detail()
}
