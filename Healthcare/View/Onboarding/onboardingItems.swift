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
                //   .scaledToFit()
                //  .aspectRatio(contentMode: .fit)
                
             //   Spacer()
                
                VStack{
                    
                    VStack{
                        
                        Text(title)
                            .frame(width: 300, height: 170)
                            .multilineTextAlignment(.leading)
                            .font(.title).bold()
                        
                    }
                    HStack{
                        
                        Rectangle()
                            .frame(width: 12, height: 4)
                            .padding(.trailing, 150)
                        
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "arrow.right")
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.mygreen)
                                .clipShape(Circle())
                        }
                        
                        
                    }
                    
                }
                .background(Rectangle()
                            //                .fill(
                            //                    LinearGradient(colors: [Color("mygrey"), .clear], startPoint: .top , endPoint: .bottom)
                            //                )
                    .foregroundColor(Color.mygrey)
                    .frame(width: 350, height: 330)
                    .cornerRadius(30)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                )
            }
        }
    }
}

#Preview {
    onboardingItems(image: "img1", title: "hdjfhkgj")
}
