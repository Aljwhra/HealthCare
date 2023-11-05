//
//  Product_on_Sale.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Product_on_Sale: View , Identifiable{
    
    var id = UUID()
    var imageName: String
    var medicineName: String
    var medicinePCS: String
    var medicinePrice: String
    var medicineSale: String
    
    var body: some View {
        VStack(spacing: 15){
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 68, height: 59)
            
            VStack(alignment: .leading,spacing: 4){
                Text(medicineName)
                  .font(
                    Font.custom("Inter", size: 12)
                      .weight(.semibold)
                  )
                Text(medicinePCS)
                  .font(
                    Font.custom("Inter", size: 9)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                HStack(spacing: 10){
                    Text(medicinePrice)
                      .font(
                        Font.custom("Inter", size: 14)
                          .weight(.semibold)
                      )
                    
                    Text("$10.99")
                      .font(
                        Font.custom("Inter", size: 8)
                          .weight(.semibold)
                      ).strikethrough()
                      .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                    Image("Component2")
                    
                }.padding(.top,8)
            }
            
        }
        .background(
            RoundedRectangle(cornerRadius: 11.13208)
              .inset(by: 0.5)
              .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
              .frame(width: 118, height: 165))
          
    }
}

#Preview {
    Product_on_Sale(imageName: "7", medicineName: "Panadol", medicinePCS: "20pcs", medicinePrice: "$15.99", medicineSale: "$10.99")
}
