//
//  Date_Baker.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 03/11/2023.
//

import SwiftUI

struct Date_Baker: View , Identifiable {
    
    var id = UUID()
    var month: String
    var day: String
    var backgroundColor: Color = Color(.white)
    var isClicked: Bool = false
    
    var body: some View {
    
            
            VStack{
               
                Text(month)
                    .foregroundStyle(isClicked ? .white : .gray)
                    .font(Font.custom("Inter", size: 14))
                Text(day)
                    .foregroundStyle(isClicked ? .white : .black)
                    .font(
                    Font.custom("Inter", size: 18)
                    .weight(.semibold)
                    )
            }.padding(0)
            .background(
                RoundedRectangle(cornerRadius: 15)
                  .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 1)
                  .background(Color(isClicked ? .mygreen : backgroundColor))
                  .frame(width: 46, height: 64)
                  .clipShape(RoundedRectangle(cornerRadius: 15))
                  
              )
            

    
//        .padding(isClicked ? 0 : 0)
        
        
        
    }
}

#Preview {
    Date_Baker(month: "Nov", day: "8")
}
