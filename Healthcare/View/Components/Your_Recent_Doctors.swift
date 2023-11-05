//
//  Your_Recent_Doctors_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 03/11/2023.
//

import SwiftUI

struct Your_Recent_Doctors: View, Identifiable {
    
    var id = UUID()
    var imageDoctor: String
    var nameDoctor: String
    
    var body: some View {
     
        VStack(spacing: 13){
                Image(imageDoctor)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 72, height: 73)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                Text(nameDoctor)
                    .font(
                        Font.custom("Inter", size: 13)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.23, green: 0.27, blue: 0.33))
            }
        
    }
}

#Preview {
    Your_Recent_Doctors(imageDoctor: "doctor1", nameDoctor: "Dr. Marcus")
}
