//
//  onboardingItems.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 23/10/2023.
//

import SwiftUI

struct onboardingItems: View {
    
    var image: String
    var title : String
    
    @State var isPrsnt = false
    
    var body: some View {
        
        ScrollView{
            
            VStack{
                
                HStack{
                    Button(action: {
                        isPrsnt = true
                    }, label: {
                        Text("Skip")
                            .bold()
                    })
                    .padding(.leading, 300.0)
                    .fullScreenCover(isPresented: $isPrsnt){
                        LogIn_SignUp_View()
                        
                    }
                    
                }
                
                .padding(.bottom)
                
                Image(image)
                    .resizable()
                    .frame(width: 350, height: 495)
                
                
                VStack{
                    
                    VStack{
                        
                        Text(title)
                            .frame(width: 300, height: 170)
                            .multilineTextAlignment(.leading)
                            .font(.title).bold()
                        
                    }

                    
                }
                .background(
                
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 321, height: 226)
                      .background(
                        LinearGradient(
                          stops: [
                            Gradient.Stop(color: Color(red: 0.96, green: 0.97, blue: 1), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.96, green: 0.97, blue: 1).opacity(0), location: 1.00),
                          ],
                          startPoint: UnitPoint(x: 0.5, y: 0),
                          endPoint: UnitPoint(x: 0.5, y: 1)
                        )
                      )
                      .cornerRadius(24)
                      .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
                )
                
                
                
//                .background(Rectangle()
//                            //                                            .fill(
//                            //                                                LinearGradient(colors: [Color("mygrey"), .clear], startPoint: .top , endPoint: .bottom)
//                            //                                            )
//                    .foregroundColor(Color.mygrey)
//                    .frame(width: 350, height: 324)
//                    .cornerRadius(30)
//                    .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
//                )
            }
        }
    }
}

#Preview {
    onboardingItems(image: "img1", title: "hdjfhkgj")
}
