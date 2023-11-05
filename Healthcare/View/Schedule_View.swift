//
//  Schedule_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 04/11/2023.
//

import SwiftUI

struct Schedule_View: View {
    
    
    
    var CardScheduleArry = [
        Card_Schedule(nameDoctor: "Dr. Marcus Horizon", specialty: "Chardiologist", imageDoctor: "doctor1" ,date: "26/06/2022",  time: "2:00 PM", confirm: "Confirmed"),
        Card_Schedule(nameDoctor: "Dr. Alysa Hana", specialty: "Chardiologist", imageDoctor: "doctor2" ,date: "26/06/2022",  time: "2:00 PM", confirm: "Confirmed"),
        Card_Schedule(nameDoctor: "Dr. Alysa Hana", specialty: "Chardiologist", imageDoctor: "doctor3" ,date: "26/06/2022",  time: "2:00 PM", confirm: "Confirmed")
    ]
    
    var body: some View {
        NavigationStack{
            VStack{
                    segments()
                        .padding(.bottom,20)
                    
                    ScrollView{
                        VStack(spacing: 30){
                            
                            ForEach(CardScheduleArry) { schedule in
                                schedule
                            }.padding(.top)
                            
                        }.frame(width: 400)
                    }
                    
               
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Text("Schedule")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "bell")
                    }
                }
            }
        }
    }
}

#Preview {
    Schedule_View()
}

struct segments: View {
    
    
    @State private var selectedSegment = 0
    let segments = ["Upcoming", "Completed", "Canceled"]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .mygreen
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    var body: some View {
        VStack{
            
            
            Picker("Segments", selection: $selectedSegment) {
                ForEach(0..<segments.count, id: \.self) { index in
                    Text(segments[index]).tag(index)
                        .tag(index)
                    
                }
            }
            .background(Color.mygreen.opacity(0.2))
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            
            if selectedSegment == 0{
                // Schedule_View()
            } else {
                // Reset_Password_Phone()
            }
            
            
            
            
        }
    }
}
