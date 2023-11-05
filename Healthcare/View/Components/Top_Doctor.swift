//
//  Top_Doctor_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 02/11/2023.
//

import SwiftUI

struct Top_Doctor: View , Identifiable{
    
    var id = UUID()
    var imageDoctor: String
    var nameDoctor: String
    var specialty: String
    var rating: String
    var distance: String
    
    var body: some View {
        
        ZStack{
                    
            VStack(spacing: 15){
                
                Image(imageDoctor)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                VStack(alignment: .leading, spacing:5){
                    Text(nameDoctor)
                        .font(
                            Font.custom("Inter", size: 12)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                    
                    Text(specialty)
                        .font(
                            Font.custom("Inter", size: 9)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                }
                
                HStack{
                    HStack(spacing: 2){
                        Image("Star")
                        Text(rating)
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
                            .cornerRadius(2.22642))
                    Spacer()
                    
                    
                    HStack(spacing: 3){
                        Image("Location")
                        
                        Text(distance)
                            .font(
                                Font.custom("Inter", size: 8)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                    }
                    
                }
                .frame(width: 100)
                
            }
            .background(Rectangle()
                .foregroundColor(.clear)
                .frame(width: 118, height: 173)
                .background(.white)
                .cornerRadius(11.13208)
                .overlay(
                    RoundedRectangle(cornerRadius: 11.13208)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 1)
                ))
        }
            
            
            
                
            
        }
    }


#Preview {
    Top_Doctor(imageDoctor: "doctor1", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away")
}


