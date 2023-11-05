//
//  Audio_Call_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 04/11/2023.
//

import SwiftUI

struct Audio_Call_View: View {
    var body: some View {
        ZStack{
       
            Image("f9")
                .resizable()
                .frame(width: 760,height: 900)
                 Rectangle()
                .background(.ultraThinMaterial)
            
                
            Image("f9")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 120,height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 100))
            
            
            VStack(alignment: .center, spacing: 50){
                Text("00:05:24")
                    .foregroundStyle(.white)
                HStack(spacing:10){
                    
                    
                    Image(systemName: "video")
                    
                        .scaledToFit()
                        .font(.title2)
                        .frame(width: 60,height: 60)
                        .foregroundColor(.white)
                        .background(.gray.opacity(0.6))
                        .cornerRadius(40)
                    
                    
                    Image(systemName: "phone")
                    
                        .scaledToFit()
                        .font(.title2)
                        .frame(width: 60,height: 60)
                        .foregroundColor(.white)
                        .background(.red.opacity(0.90))
                        .cornerRadius(40)
                    
                    
                    Image(systemName: "mic")
                    
                        .scaledToFit()
                        .font(.title2)
                        .frame(width: 60,height: 60)
                        .foregroundColor(.white)
                        .background(.gray.opacity(0.6))
                        .cornerRadius(40)
                    
                }
                
                VStack(spacing: 15){
                    Image(systemName: "chevron.up")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Text("Swipe back to menu")
                        .foregroundColor(.white)
                }
            }.offset(y:270)
            
        }
    }
}

#Preview {
    Audio_Call_View()
}
