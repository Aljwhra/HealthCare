//
//  Search_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 02/11/2023.
//

import SwiftUI

struct Search: View {
    
    @State var Search = ""
    
    
    var titileSearch: String
    
    
    var body: some View {
       
        HStack {
            Image("Search")
                .padding(.leading,55)
            TextField(titileSearch, text: $Search )
                .font(Font.custom("Inter", size: 12))
                .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                .padding(.leading,6)
        }
          .background(  Rectangle()
          .foregroundColor(.clear)
          .frame(width: 324, height: 40)
          .background(Color(red: 0.98, green: 0.98, blue: 0.98))
          .cornerRadius(24)
          .overlay(
            RoundedRectangle(cornerRadius: 24)
              .inset(by: 0.5)
              .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 1)
          )
            )
        
    }
}

#Preview {
    Search(titileSearch: "Search doctor, drugs, articles...")
}
