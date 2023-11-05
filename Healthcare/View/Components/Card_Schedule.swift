//
//  Card_Schedule.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 04/11/2023.
//

import SwiftUI

struct Card_Schedule: View , Identifiable{
    
    var id = UUID()
    var nameDoctor: String
    var specialty: String
    var imageDoctor: String
    var date: String
    var time: String
    var confirm: String
    
    var body: some View {
        VStack{
            
            
            VStack(spacing:15){
                
                HStack(spacing:50){
                    VStack(alignment: .leading, spacing: 4){
                        Text(nameDoctor)
                            .font(.title3).bold()
                        
                        Text(specialty)
                            .font(.callout)
                            .foregroundStyle(.gray)
                        
                    }
                    
                    Image(imageDoctor)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 62, height: 63)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                }
                
                HStack{
                    Image("Calendar1")
                    Text(date)
                    
                    Image("TimeCircle")
                    Text("2:00 PM")
                    
                    Image("Ellipse1")
                    Text(confirm)
                    
                    
                    
                }
                .frame(width: 290, height: 15, alignment: .leading)
                .font(.caption)
                .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                
                
                
                
                HStack{
                    
                    
                    NavigationLink{
                        
                    } label: {
                        Text("Cancel")
                            .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                            .frame(width: 145, height: 46)
                            .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                            .cornerRadius(8)
                    }
                    
                    NavigationLink{
                        
                    } label: {
                        Text("Reschedule")
                            .foregroundColor(.white)
                            .frame(width: 145, height: 46)
                            .background(Color(.mygreen))
                            .cornerRadius(8)
                    }
                    
                }
                
                
            }
            
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
                    .frame(width: 335, height: 179)
                    .background(.white))
            
        }.padding(.horizontal)
    }
}

#Preview {
    Card_Schedule(nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", imageDoctor: "doctor1" ,date: "26/06/2022",  time: "2:00 PM", confirm: "Confirmed")
}
