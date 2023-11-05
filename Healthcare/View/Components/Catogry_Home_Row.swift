//
//  Catogry_Home_Row_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 02/11/2023.
//

import SwiftUI

struct Catogry_Home_Row: View , Identifiable  {
    
    var id = UUID()
    var imageName: String
    var title: String
    
    var body: some View {
        ZStack{
            VStack{
                Image(imageName)
                
                    .background( Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 64, height: 56)
                        .background(.white)
                        .cornerRadius(16)
                        .shadow(color: .black.opacity(0.1), radius: 35, x: 0, y: 17)
                    )
                    .padding(.bottom)
                
                // Body / Medium - Regular
                Text(title)
                    .font(Font.custom("Inter", size: 13))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
            }
        }
    }
}

#Preview {
    Catogry_Home_Row(imageName: "Doctor", title: "Doctor")
}
