//
//  OnboardingView.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 22/10/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    let onboardingItemsArry = [
        onboardingItems(image: "img1", title: "Find a lot of specialist docters in one place"),
        onboardingItems(image: "img2", title: "Get connect our Online Consultation"),
        onboardingItems(image: "img3", title: "Consult only with doctor you trust")]
    
    @State var currentindex: Int = 0
    @State var isPrsnt = false
    
    var body: some View {
        
        
        ZStack{
            
            TabView(selection: $currentindex){
                ForEach(onboardingItemsArry.indices,id: \.self) { index in
                    onboardingItemsArry[index]
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .overlay(
                    HStack (spacing: 8){
                        ForEach(onboardingItemsArry.indices, id: \.self){ index in
                            let isCurrentPage: Bool = currentindex == index
                            Capsule()
                                .fill(isCurrentPage ? Color.mygreen : Color.mygreen.opacity(0.4))
                                .frame(width: isCurrentPage ? 15 : 15,height: 6)
                                .animation(.interactiveSpring(response: 0.5),value: isCurrentPage)
                            
                        }
                        Spacer()
                        
                        Button(action: {
                            isPrsnt = true
                        }) {
                            Image(systemName: "arrow.right")
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.mygreen)
                                .clipShape(Circle())
                        }
                        .fullScreenCover(isPresented: $isPrsnt){
                            LogIn_SignUp_View()
                        }
                    }
                        .frame(width: 250)
                        .padding(.top,700)
                )
                .ignoresSafeArea()
        }
    }
}

#Preview {
    OnboardingView()
}



