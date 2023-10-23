//
//  OnboardingView.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 22/10/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        
        
        ZStack{
            
          TabView{
                
              onboardingItems(image: "img1", title: "Find a lot of specialist docters in one place")
              onboardingItems(image: "img2", title: "Get connect our Online Consultation")
                onboardingItems(image: "img3", title: "Consult only with doctor you trust")
            }
            
           .tabViewStyle(.page)
           .indexViewStyle(.page(backgroundDisplayMode: .never))
           .ignoresSafeArea()
        }
        
    }
}

#Preview {
    OnboardingView()
}



