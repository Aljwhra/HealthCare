//
//  SplashScreenView.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 22/10/2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.9
    @State private var opacity = 0.5
    
    var body: some View {
        
        ZStack{
            
            if isActive{
                OnboardingView()
            }else {
                Color.mygreen
                    .ignoresSafeArea()
                //     .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    VStack{
                        Image(systemName: "cross")
                            .resizable()
                            .frame(width:140, height: 140)
                            .foregroundColor(.white)
                        Text("Swift  معسكر")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white.opacity(0.90))
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.8
                            self.opacity = 1.0
                        }
                    }
                }
                
                .ignoresSafeArea()
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    SplashScreenView()
}

