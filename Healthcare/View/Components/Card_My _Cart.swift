//
//  Card_My _Cart.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Card_My_Cart: View , Identifiable{
    
    var id = UUID()
    var imageName: String
    var medicineName: String
    var medicinePCS: String
    var medicineNum: String
    var medicinePrais: String
    
    var body: some View {
        HStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 68, height: 85)
                .padding(.leading,36)
            
            VStack(alignment: .leading,spacing: 10){
                
                HStack{
                Text(medicineName)
                    .font(
                        Font.custom("Inter", size: 20)
                            .weight(.semibold)
                    )
                Spacer()
                Image("Delete")
                  }.padding(.horizontal,40)
                   
                HStack{
                    Text(medicinePCS)
                        .font(
                            Font.custom("Inter", size: 16)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                    
                }.padding(.horizontal)
                    
                
                HStack{
                    Text("-")
                        .font(.title)
                        .foregroundStyle(.gray)
                    Text(medicineNum)
                        .font(
                            Font.custom("Inter", size: 24)
                                .weight(.semibold)
                        )
                    
                    
                    Image("Component2")
                    Spacer()
                    
                    Text(medicinePrais)
                        .font(
                            Font.custom("Inter", size: 26)
                                .weight(.semibold)
                        )
                    
                }.padding(.horizontal,40)
            }
        }
       
        .background(
            RoundedRectangle(cornerRadius: 12)
              .inset(by: 0.5)
              .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
              .frame(width: 340, height: 121))
          
    }
}

#Preview {
    Card_My_Cart(imageName: "8", medicineName: "OBH Combi", medicinePCS: "75ml", medicineNum: "1", medicinePrais: "$9.99")
}
