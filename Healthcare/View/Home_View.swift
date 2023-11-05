//
//  Home_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 01/11/2023.
//

import SwiftUI

struct Home_View: View {
    
    
    var catogryRow = [
        Catogry_Home_Row(imageName: "Doctor", title: "Doctor"),
        Catogry_Home_Row(imageName: "Pharmacy", title: "Pharmacy"),
        Catogry_Home_Row(imageName: "Hospital", title: "Hospital"),
        Catogry_Home_Row(imageName: "Ambulance", title: "Ambulance")]
    
    
    
    var doctorRow = [
        Top_Doctor(imageDoctor: "doctor1", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Top_Doctor(imageDoctor: "doctor2", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Top_Doctor(imageDoctor: "doctor3", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Top_Doctor(imageDoctor: "doctor4", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away"),
        Top_Doctor(imageDoctor: "doctor4", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away")
        
    ]
    

    
    var body: some View {
        NavigationStack{
            ZStack {
                ScrollView{
                    Header_Home()
                        .padding(.top,40)
                    
                    Search(titileSearch: "Search doctor, drugs, articles...")
                        .padding(.top,25)
                    
                    HStack(spacing: 32){
                        ForEach(catogryRow) { row in
                            row
                        }
                    }
                    .padding(.top,35)
                    
                    Ad_Home_Box()
                        .padding(.top,35)
                    
                    HStack{
                        Text("Top Doctor")
                        Spacer()
                        
                        
                        NavigationLink{
                          See_All_Top_Doctor_View()
                        } label: {
                            Text("See all")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color.mygreen)
                        }
                           
                    }
                    .padding(.horizontal)
                    .padding(.bottom,5)
                    .padding(.top,5)
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 25){
                            ForEach(doctorRow) { row in
                                row
                            }
                        } .padding(.vertical)
                    }
                    
                }
                .frame(width: 375, height: 812)
                
            }.padding(0)
        }
    }
}

#Preview {
    Home_View()
}
