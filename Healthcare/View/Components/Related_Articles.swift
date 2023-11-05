//
//  Related_Articles.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Related_Articles: View, Identifiable {
    
    var id = UUID()
    var imageName: String
    var titile: String
    var date: String
    var time: String
    
    
    var body: some View {
        ZStack{
            HStack(spacing: 20){
                
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 68, height: 59)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.leading,-6)
                
                VStack(alignment: .leading ,spacing: 10){
                    
                    HStack(spacing: 5){
                        
                        Text(titile)
                            .font(
                                Font.custom("Inter", size: 12)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                            .frame(width: 209, alignment: .topLeading)
                        
                        Image("Bookmark")
                        
                    }/*.frame(width: 200, alignment: .topLeading)*/
                    
                    HStack{
                        Text(date)
                            .font(
                                Font.custom("Inter", size: 9)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                        Text(time)
                            .font(
                                Font.custom("Inter", size: 9)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.1, green: 0.6, blue: 0.56))
                    }
                }
                
            }.background(
                
                RoundedRectangle(cornerRadius: 10)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
                    .frame(width: 345, height: 70)
            )
            
            
        }
    }
}

#Preview {
    Related_Articles(imageName: "3", titile: "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist", date: "Jun 10, 2022", time: "5min read")
}
