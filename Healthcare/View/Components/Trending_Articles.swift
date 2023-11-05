//
//  Trending_Articles.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Trending_Articles: View , Identifiable {
    var id = UUID()
    var image: String
    var titile1: String
    var titile2: String
    var date: String
    var time: String
    
    
    var body: some View {
        ZStack {
            
            VStack(alignment: .leading, spacing: 8){
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
                Text(titile1)
                .font(.caption)
                .foregroundColor(.mygreen)
                .background(
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 60, height: 20)
                  .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                  .cornerRadius(3))
                .padding(.horizontal,4)
                
                Text(titile2)
                    .font(.caption)
                  
                  .frame(width: 138, alignment: .topLeading)
                
                
                HStack{
                    Text(date)
                        .font(.caption2)
                        .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                   
                    
                    Text(time)
                        .font(.caption2)
                        .foregroundColor(Color(red: 0.1, green: 0.6, blue: 0.56))
                }
            }
        }
    
        .background(
          RoundedRectangle(cornerRadius: 10)
            .inset(by: 0.5)
            .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
            .frame(width: 154, height: 230))
        
    }
}

#Preview {
    Trending_Articles(image: "1", titile1: "Covid-19", titile2: "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines", date: "Jun 12, 2022", time: "6 min read")
}
