//
//  See_All_Top _Doctor_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 02/11/2023.
//

import SwiftUI

struct See_All_Top_Doctor_View: View {
    
    var See_All_Top = [
        Card_Docters(imageDoctor: "doctor1", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Card_Docters(imageDoctor: "doctor2", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Card_Docters(imageDoctor: "doctor3", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Card_Docters(imageDoctor: "doctor4", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Card_Docters(imageDoctor: "doctor5", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away")
    ]
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                
                VStack(spacing: 25){
                    ForEach(See_All_Top) { row in
                        row
                    }.padding(.horizontal,60)
                }
                .padding(.top,20)
            }
            
            .navigationTitle("Top Doctor")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing: Button(action: {}) {Image("dots")})
        }
    }
}

#Preview {
    See_All_Top_Doctor_View()
}


