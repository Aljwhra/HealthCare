//
//  Date_&_Reason.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 03/11/2023.
//

import SwiftUI

struct Date_and_Reason: View , Identifiable {
    
    var id = UUID()
    var title1: String
    var title2: String
    var imageName : String
    var title3: String
    
    
    var body: some View {
        VStack{
            HStack{
                Text(title1)
                    .font(.title3).bold()
                
                Spacer()
                Text(title2)
                  .font(.callout)
                  .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
            } .frame(width: 360)
            HStack(spacing: 30){
                
                Image(imageName)
                .frame(width: 40, height: 40)
                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                Text(title3)
                    .font(.callout).bold()
                 
                  .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
            }  .frame(width: 360, alignment: .leading)
        }
        
       
        Divider()
        
            .frame(width: 358)
            .background(Color.mygreen.opacity(0.5))
           // .padding(.top,10)
           // .padding(.bottom,8)
          
        
    }
}

#Preview {
    Date_and_Reason(title1: "Date", title2: "Change", imageName: "Calendar", title3: "Wednesday, Jun 23, 2022 | 10:00 AM")
}
