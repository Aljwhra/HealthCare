//
//  Reset_Password_Email.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 01/11/2023.
//

import SwiftUI

struct Reset_Password: View {
    
    @State private var selectedSegment = 0
    let segments = ["Email", "Phone"]
    
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading, spacing: 8) {
                Text("Forgot Your Password?")
                    .font(
                        Font.custom("Inter", size: 24)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                
                Text("Enter your email or your phone number, we will send you confirmation code")
                    .font(Font.custom("Inter", size: 16))
                    .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
                    .frame(width: 327, alignment: .topLeading)
                
                
                
                
                VStack {
                    
                    Picker("Segments", selection: $selectedSegment) {
                        ForEach(0..<segments.count, id: \.self) { index in
                            Text(segments[index]).tag(index)
                                .tag(index)
                        }
                    }
                    
                    .pickerStyle(SegmentedPickerStyle())
                    .background(
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 327, height: 51)
                            .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                            .cornerRadius(29)
                            .overlay(
                                RoundedRectangle(cornerRadius: 29)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.9, green: 0.91, blue: 0.92), lineWidth: 1)
                            )
                    )
                    .padding()
                    
                    .padding(.bottom,50)
                    
                    
                    
                    if selectedSegment == 0{
                        Reset_Password_Email()
                    } else {
                        Reset_Password_Phone()
                    }
                    
                    
                    
                   
                    
                }
                .padding(0)
                
                
                
            }
            .padding(0)
            .frame(width: 327, alignment: .leading)
            
        }
        
    }
}

#Preview {
    Reset_Password()
}
