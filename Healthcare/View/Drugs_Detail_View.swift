//
//  Drugs_Detail_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Drugs_Detail_View: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("8")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 193, height: 193)
                
                VStack(alignment: .leading,spacing: 10){
                    Text("OBH Combi")
                      .font(
                        Font.custom("Inter", size: 20)
                          .weight(.semibold)
                      )
                      .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                    HStack{
                        Text("75ml")
                          .font(
                            Font.custom("Inter", size: 16)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                        Spacer()
                        
                        Image("Heart")
                        
                    }.padding(.horizontal)
                    
                    HStack{
                        Image("Star")
                        Image("Star")
                        Image("Star")
                        Image("Star")
                        
                        Text("4.0")
                          .font(
                            Font.custom("Inter", size: 14)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.1, green: 0.6, blue: 0.56))
                    }
                    
                    HStack{
                        Text("-")
                            .font(.title)
                            .foregroundStyle(.gray)
                        Text("1")
                          .font(
                            Font.custom("Inter", size: 24)
                              .weight(.semibold)
                          )
                          
                        
                        Image("Component2")
                        Spacer()
                        
                        Text("$9.99")
                          .font(
                            Font.custom("Inter", size: 26)
                              .weight(.semibold)
                          )
                          
                    }
                    
                    VStack(alignment: .leading, spacing: 10){
                        Text("Description")
                            .font(
                                Font.custom("Inter", size: 16)
                                    .weight(.semibold)
                            )
                        
                        Text("OBH COMBI  is a cough medicine containing, Paracetamol, Ephedrine HCl, and Chlorphenamine maleate which is used to relieve coughs accompanied by flu symptoms such as fever, headache, and sneezing... Read more")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                            .frame(width: 334, alignment: .topLeading)
                    }.padding(.bottom,30)
                    
                    HStack(spacing:30){
                        
                        Image("Buy1")
                            .background(
                                Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 50, height: 50)
                                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                                .cornerRadius(8))
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            
                            Text("Buy Now")
                                .bold()
                                .foregroundColor(.white)
                                .frame(width: 266, height: 50)
                                .background(.mygreen)
                                .cornerRadius(20)
                        })
                        
                    }.padding(.horizontal)
                    
                    
                }.padding()
                
            }
            
            .navigationTitle("Drugs Detail")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {}) {Image("Buy")})
            
        }
    }
}

#Preview {
    Drugs_Detail_View()
}
