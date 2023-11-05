//
//  Doctor_Detail_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 03/11/2023.
//

import SwiftUI

struct Doctor_Detail_View: View {
    
    var dateBakerArry = [
        Date_Baker(month: "Mon", day: "21"),
        Date_Baker(month: "Tue", day: "23"),
        Date_Baker(month: "Wed", day: "23",isClicked: true),
        Date_Baker(month: "Thu", day: "24"),
        Date_Baker(month: "Fri", day: "25"),
        Date_Baker(month: "Sat", day: "26")
    ]
    
    
    var timeBakerArry = [
        Time_Baker(time: "01:00 PM", isClicked: false, isAvailable: true),
        Time_Baker(time: "02:00 PM", isClicked: false, isAvailable: true),
        Time_Baker(time: "03:00 PM", isClicked: false, isAvailable: false),
        Time_Baker(time: "04:00 PM", isClicked: false, isAvailable: false),
        Time_Baker(time: "05:00 PM", isClicked: true, isAvailable: false),
        Time_Baker(time: "06:00 PM", isClicked: false, isAvailable: false),
        Time_Baker(time: "06:00 PM", isClicked: false, isAvailable: true),
        Time_Baker(time: "07:00 PM", isClicked: false, isAvailable: true),
        Time_Baker(time: "02:00 PM", isClicked: false, isAvailable: true)
    ]
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3) // 3 columns
    
    
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack{
                    
                    Header_Doctor_Detail()
                        .padding(.top,54)
                    
                    VStack(alignment: .leading, spacing: 15){
                        Text("About")
                            .font(
                                Font.custom("Inter", size: 18)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam... Read more")
                        
                        
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color(red: 0.44, green: 0.47, blue: 0.52))
                            .frame(width: 334, alignment: .topLeading)
                        
                    }.padding(.top,33)
                    
                    HStack(spacing: 30){
                        
                        ForEach(dateBakerArry) { baker in
                            baker
                        }
                    }.padding(.top,33)
                    
                    
                    Divider()
                    
                        .frame(width: 315)
                        .background(Color.mygreen.opacity(0.5))
                        .padding(.top,33)
                        .padding(.bottom,5)
                    
                    
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(timeBakerArry) { baker in
                            baker
                                .frame(height: 36) // Adjust the size as needed
                        }
                    }.padding()
                    
                    
                    
                    HStack(spacing: 40){
                        Image("Chat")
                            .background(
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 50, height: 50)
                                    .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                                    .cornerRadius(15))
                        
                        
                        NavigationLink{
                          Appointment_View()
                        } label: {
                            Text("Book Apointment")
                                .foregroundColor(.white)
                                .frame(width: 266, height: 50)
                                .background(Color(.mygreen))
                                .cornerRadius(32)
                        }
                        
                    }
                    .padding(.top,50)
                      
                    
                    
                    
                }
                    

            }
            .navigationTitle("Doctor Detail")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(trailing: Button(action: {}) {Image("dots")})
        }
    }
}

#Preview {
    Doctor_Detail_View()
}
