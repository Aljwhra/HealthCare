//
//  Chat_Doctor_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 04/11/2023.
//

import SwiftUI

struct Chat_Doctor_View: View {
    var body: some View {
        NavigationStack{
            
            ScrollView{
                VStack(spacing: 30){
                    
                    Consultion_Start()
                        .padding(.top,35)
                    
                    
                    UserName(doctorStatus: "10 min ago")
                        .padding(.trailing,95)
                    
                    
                    Chat_Box_Docter1()
                        .padding(.top,-10)
                        .padding(.trailing,110)
                    
                    Chat_Box_Uesr1()
                        .padding(.leading,110)
                    
                    
                    UserName(doctorStatus: "5 min ago")
                        .padding(.top,-20)
                        .padding(.trailing,95)
                    
                    Chat_Box_Docter2()
                        .padding(.top,-10)
                        .padding(.trailing,99)
                    
                    Chat_Box_Uesr2()
                        .padding(.leading,120)
                        .padding(.top,5)
                    
                    UserName(doctorStatus: "Online")
                        .padding(.top,-15)
                        .padding(.trailing,95)
                    
                    Chat_Box_Docter3()
                        .padding(.top,-22)
                        .padding(.trailing,270)
                    
                    TypeMessage()
                        .padding(.top,-10)
                    
                }
                
                
            }
            
            
            .navigationTitle("Dr. Marcus Horizon")
            .navigationBarTitleDisplayMode(.inline) // Center the title
            .navigationBarItems(
                trailing:
                    HStack {
                        Button(action: {}) {
                            Image("VideoCamera")
                        }
                        Button(action: {}) {
                            Image("Phone")
                        }
                        Button(action: {}) {
                            Image("dots")
                        }
                    }
            )
        }
    }
}

#Preview {
    Chat_Doctor_View()
}


struct Consultion_Start: View {
    var body: some View {
        
        
        VStack {
            Text("Consultion Start")
                .font(.title2)
                .foregroundStyle(.mygreen)
            
            
            Text("You can consult your problem to the doctor")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width:400)
        .background(
            RoundedRectangle(cornerRadius: 11)
                .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
                .frame(width: 334, height: 75))
        
    }
}

struct UserName:View  {
    
    //    var doctorName: String
    var doctorStatus: String
    
    var body: some View {
      
            HStack(spacing:16){
                Image("doctor1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 62, height: 63)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Dr. Marcus Horizon")
                        .font(.title3).bold()
                    
                    Text(doctorStatus)
                        .font(.callout)
                        .foregroundStyle(.gray)
                }
            }
        
    }
}

struct Chat_Box_Docter1: View {
    
    var body: some View {
        
        VStack{
            Text("Hello, How can i help you?")
                .font(.callout)
                .foregroundStyle(.gray)
        }
        .background(
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 210, height: 46)
                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                .cornerRadius(8))
    }
}

struct Chat_Box_Docter2: View {
    
    
    var body: some View {
        
        
        VStack{
            Text("Ok, Do you have fever? is the\nheadchace severe")
                .font(.callout)
                .foregroundStyle(.gray)
        }
        .background(
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 230, height: 70)
                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                .cornerRadius(8))
    }
}

struct Chat_Box_Docter3: View {
    
    var body: some View {
        
        VStack{
          Image("Typing")
        }
    }
}

struct Chat_Box_Uesr1: View {
    var body: some View {
        
       
            HStack{
                Text("I have suffering from headache and cold for 3 days, I took 2 tablets of dolo, but still pain")
                    .font(.callout)
                    .foregroundColor(.white)
                Image("check")
                    .offset(x:10)
                    .offset(y:30)
                
            }
            .frame(width: 210, alignment: .topLeading)
            .background(
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 250, height: 100)
                    .background(.mygreen)
                    .cornerRadius(8))
        }
}

struct Chat_Box_Uesr2: View {
    var body: some View {
        
       
            HStack{
                Text("I don,t have any fever, but headchace is painful")
                    .font(.callout)
                    .foregroundColor(.white)
                Image("check")
                    .offset(x:1)
                    .offset(y:20)
                
            }
            .frame(width: 210, alignment: .topLeading)
            .background(
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 235, height: 66)
                    .background(.mygreen)
                    .cornerRadius(8))
        }
}

struct TypeMessage:View {
    var body: some View {
        
        
        HStack(alignment: .center, spacing: 35){
            HStack(spacing: 20){
                Text("Type message ...")
                    .font(.callout)
                Image(systemName: "paperclip")
                
            }
            .foregroundStyle(.gray)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 2)
                    .frame(width: 207, height: 50))
            
            NavigationLink{
              
            } label: {
                Text("Booking")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 111, height: 50)
                    .background(Color(.mygreen))
                    .cornerRadius(32)
            }
            
            
        }.padding(.leading)
    }
}
