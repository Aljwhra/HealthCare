//
//  Home_Header_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 02/11/2023.
//

import SwiftUI

struct Header_Home: View {
    var body: some View {
        HStack{
            
            Text("Find your desire \nhealt solution")
                .font(
                    Font.custom("Inter", size: 22)
                        .weight(.semibold)
                )
                .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
            Spacer()
            Image("Notification")
                
            .frame(width: 24, height: 24)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    Header_Home()
}
