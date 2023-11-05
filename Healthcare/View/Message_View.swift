//
//  Message_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 04/11/2023.
//

import SwiftUI

struct Message_View: View {
    var body: some View {
        NavigationStack{
            
            VStack{
                segments2()
                    .padding(.bottom,20)
                ScrollView{
                    All()
                    
                    HStack{
                        Image(systemName: "ellipsis.message")
                            .foregroundColor(.white)
                            .frame(width: 55, height: 55)
                            .background(Color.mygreen)
                            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 8)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                    }
                    .offset(x:150,y: 270)
                   
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Text("Message")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                    }
                }
            }
        }
    }
}

#Preview {
    Message_View()
}

struct segments2: View {
    
    
    @State private var selectedSegment = 0
    let segments = ["All", "Group", "Private"]
    
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

struct All: View {
    
    var body: some View {
        
        VStack(spacing: 20){
            
            HStack(spacing:19){
                
                Image("doctor1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 62, height: 63)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                VStack(alignment: .leading, spacing: 5){
                    HStack(spacing: 60){
                        Text("Dr. Marcus Horizon")
                            .font(.title3).bold()
                        
                        Text("10:24")
                    }
                    HStack(spacing: 40){
                        Text("I don,t have any fever,but headchace...")
                            .font(.caption)
                            .foregroundStyle(.gray)
                        Text("1")
                            .foregroundStyle(.white)
                            .background(
                                Circle()
                                    .fill(.mygreen)
                                    .frame(width: 15))
                        
                    }
                }
            }
            
            
            HStack(spacing:19){
                
                Image("doctor5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 62, height: 63)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                VStack(alignment: .leading, spacing: 5){
                    HStack(spacing: 90){
                        Text("Dr. Alysa Hana")
                            .font(.title3).bold()
                        
                        Text("09:00")
                    }
                    HStack(spacing: 100){
                        Text("Hello, How can i help you?")
                            .font(.caption)
                            .foregroundStyle(.gray)
                        Image("check2")
                           
                        
                    }
                }
            }
            
            
            HStack(spacing:19){
                
                Image("doctor2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 62, height: 63)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                VStack(alignment: .leading, spacing: 5){
                    HStack(spacing: 90){
                        Text("Dr. Maria Elena")
                            .font(.title3).bold()
                        
                        Text("09:00")
                    }
                    HStack(spacing: 140){
                        Text("Do you have fever?")
                            .font(.caption)
                            .foregroundStyle(.gray)
                        Image("check2")
                           
                        
                    }
                }
            }
            
            
        }
    }
}
