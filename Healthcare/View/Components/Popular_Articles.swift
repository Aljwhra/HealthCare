//
//  Popular_Articles.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Popular_Articles: View , Identifiable {
    
    var id = UUID()
    var titile:String
    
    var body: some View {
        HStack{
            Text(titile)
              .foregroundColor(.white)
        }

        .padding()
        .background(
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 118, height: 50)
          .background(Color(red: 0.1, green: 0.6, blue: 0.56))
          .cornerRadius(10))
    }
}

#Preview {
    Popular_Articles(titile: "Covid-19")
}
