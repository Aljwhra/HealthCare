//
//  My_Cart_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct My_Cart_View: View {
    
    var CardMyCartArry = [
        Card_My_Cart(imageName: "8", medicineName: "OBH Combi", medicinePCS: "75ml", medicineNum: "1", medicinePrais: "$9.99"),
        Card_My_Cart(imageName: "9", medicineName: "OBH Combi", medicinePCS: "75ml", medicineNum: "1", medicinePrais: "$9.99")
    ]
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack(spacing: 30){
                    ForEach(CardMyCartArry){ product in
                        product
                    }
                    
                    Payment_Detail2()
                    Payment_Method2()
                }.padding(.bottom)
                
                
                HStack(spacing: 80){
                   
                    VStack{
                        Text("Total")
                            .font(.callout)
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                        
                        Text("$ 61.00")
                            .bold()
                    }
                    NavigationLink{
                       
                    } label: {
                        Text("Checkout")
                            .bold()
                            .foregroundColor(.white)
                            .frame(width: 192, height: 50)
                            .background(Color(.mygreen))
                            .cornerRadius(32)
                    }
                    
                }
                .padding(.top,20)
            }
            .navigationTitle("My Cart")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    My_Cart_View()
}



struct Payment_Detail2: View{
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("Payment Detail")
                .font(.title3).bold()
                .padding(.bottom,6)
            HStack{
                Text("Subtotal")
                    .font(.callout)
                    
                Spacer()
                Text("$25.98")
            }
            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
            
            HStack{
                Text("Taxes")
                    .font(.callout)
                    
                Spacer()
                Text("$1.00")
            }.foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
            
            
         
            
            HStack{
                Text("Total")
                .bold()
                Spacer()
                Text("$61.00")
                    .bold()
            }
            
        } .frame(width: 360)
        
        Divider()
        
            .frame(width: 358)
            .background(Color.mygreen.opacity(0.5))
            .padding(.top,4)
            .padding(.bottom,8)
    }
    
    
}


struct Payment_Method2: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 19){
            Text("Payment Method")
                .font(.title3).bold()
                .padding(.bottom,6)
                .padding(.leading,-30)
            
            HStack(spacing: 185){
                Text("VISA")
                    .font(.title2)
                    .italic().bold()
                  .foregroundColor(Color(red: 0.1, green: 0.12, blue: 0.44))
                
                Text("Change")
                  .font(.callout)
                  .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                
            }.background(
                RoundedRectangle(cornerRadius: 11)
                  .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
                  .frame(width: 334, height: 49)
                  .background(.white))
            
        }
    }
    
}
