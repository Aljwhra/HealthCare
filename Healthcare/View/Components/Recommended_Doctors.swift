//
//  Recommended_Doctors_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 02/11/2023.
//

import SwiftUI

struct Recommended_Doctors: View , Identifiable {
    
    var id = UUID()
    var imageDoctor: String
    var nameDoctor: String
    var specialty: String
    var rating: String
    var distance: String
    
    var body: some View {
        
        ZStack{
            
            backgroundRoundedRectangle()
            
            HStack{
                Image(imageDoctor)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .frame(width: 5, height: 110 )
                    .padding(.trailing,70)
                
                
                VStack(alignment: .leading){
                    Text(nameDoctor)
                        .font(
                            Font.custom("Inter", size: 16)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                        .padding(.top,3)
                    
                    
                    
                    Text(specialty)
                        .font(Font.custom("Inter", size: 12))
                        .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                        .padding(.top,3)
                    
                    Divider()
                        .frame(width: 120)
                    
                    HStack( spacing: 10){
                        
                        HStack(spacing: 2){
                            
                            Image("Star")
                            
                            Text(rating)
                                .font(
                                    Font.custom("Inter", size: 8)
                                        .weight(.medium)
                                )
                                .foregroundColor(Color(red: 0.1, green: 0.6, blue: 0.56))
                            
                        }
                        .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 28, height: 13)
                                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                                .cornerRadius(2))
                        .padding()
                        HStack(spacing: 3){
                            Image("Location")
                            
                            Text(distance)
                                .font(
                                    Font.custom("Inter", size: 12)
                                        .weight(.medium)
                                )
                                .foregroundColor(Color(red: 0.23, green: 0.27, blue: 0.33))
                        }
                        
                    }
                    
                }.padding(0)
                
            }.padding(0)
            
        }
    }
}



#Preview {
    Recommended_Doctors(imageDoctor: "doctor1", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away")
}



struct backgroundRoundedRectangle: View {
    
    
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 11)
        
            .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 1)
            .frame(width:  327, height: 132)
            .background()
        
        
            .background(
                RoundedRectangle(cornerRadius: 16)
                
                    .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 1)
                    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                    .cornerRadius(16)
                    .frame(width: 303, height: 132)
                    .offset(y:11)
                    .offset(x:2)
            )
    }
    
}
