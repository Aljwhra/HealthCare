//
//  Find_Doctors_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 02/11/2023.
//



import SwiftUI

struct Find_Doctors_View: View {
    
    var catogryRow = [
        Catogry_Home_Row(imageName: "Doctor", title: "Doctor"),
        Catogry_Home_Row(imageName: "Lungs", title: "Lungs Specialist"),
        Catogry_Home_Row(imageName: "Dentist", title: "Dentist"),
        Catogry_Home_Row(imageName: "Psychiatrist", title: "Psychiatrist"),
        Catogry_Home_Row(imageName: "Covid", title: "Covid-19"),
        Catogry_Home_Row(imageName: "Syringe", title: "Surgeon"),
        Catogry_Home_Row(imageName: "Cardiologist", title: "Cardiologist")
    ]
    
    
    var recentDoctos = [
        Your_Recent_Doctors(imageDoctor: "doctor1", nameDoctor: "Dr. Marcus"),
        Your_Recent_Doctors(imageDoctor: "doctor2", nameDoctor: "Dr. Marcus"),
        Your_Recent_Doctors(imageDoctor: "doctor3", nameDoctor: "Dr. Marcus"),
        Your_Recent_Doctors(imageDoctor: "doctor4", nameDoctor: "Dr. Marcus")
    ]
    
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4) // 4 columns
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    Search(titileSearch: "Find a doctor")
                        .padding(.top,30)
                    
                    Text("Category")
                        .font(
                            Font.custom("Inter", size: 18)
                                .weight(.semibold)
                        )
                        .padding(.trailing,260)
                        .padding(.top,35)
                    
                    
                    LazyVGrid(columns: columns, spacing: 25) {
                        ForEach(catogryRow) { row in
                            row
                                .frame(maxWidth: .infinity, alignment: .center) // Center-align each item
                        }
                    }.padding(.horizontal)
                        .padding(.top,25)
                    
                    
                    
                    Text("Recommended Doctors")
                        .font(
                            Font.custom("Inter", size: 18)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                        .padding(.trailing,144)
                        .padding(.top,15)
                    
                    
                    Recommended_Doctors(imageDoctor: "doctor1", nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", rating: "4.7", distance: "800m away")
                        .padding(.top,10)
                    
                    
                    Text("Your Recent Doctors")
                      .font(
                        Font.custom("Inter", size: 18)
                          .weight(.semibold)
                      )
                      .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                      .padding(.trailing,144)
                      .padding(.top,30)
                    
                    
                    HStack(spacing: 15){
                        ForEach(recentDoctos) { docto in
                            docto
                        }
                    }
                    .padding(.top,10)
                    
                    
                }.padding(0)
                
                    .navigationTitle("Find Doctors")
                    .navigationBarTitleDisplayMode(.inline) // Center the title
            }
            
        }
    }
}

#Preview {
    Find_Doctors_View()
}
