////
////  Time_Baker.swift
////  Healthcare
////
////  Created by Aljwhra Alnasser on 03/11/2023.
////
//
//import SwiftUI
//
//struct Time_Baker: View , Identifiable{
//    var id = UUID()
//    var time: String
//    var backgroundColor: Color = Color(.white)
//    var isClicked: Bool = false
//    var isAvailable: Bool = false
//    
//    var body: some View {
//        
//        VStack{
//           
//            Text(time)
//                .foregroundStyle(isClicked ? .white : .black )
//                .foregroundStyle(isAvailable ? .black : Color(.mygreen.opacity(0.2)))
//                .font(Font.custom("Inter", size: 14))
//        
//        }.padding(0)
//        .background(
//            RoundedRectangle(cornerRadius: 15)
//                .stroke(Color(isClicked ? .mygreen : Color(.mygreen.opacity(0.2))))
//                .frame(width: 103, height: 37)
//                .background(Color(isClicked ? .mygreen : backgroundColor)
//              .clipShape(RoundedRectangle(cornerRadius: 15))
//              
//        ))
//    }
//}
//
//#Preview {
//    Time_Baker( time: "02:00 PM", isClicked: false, isAvailable: false)
//}


import SwiftUI

struct Time_Baker: View, Identifiable {
    var id = UUID()
    var time: String
    var isClicked: Bool
    var isAvailable: Bool

    var body: some View {
        
        ZStack{
            Text(time)
                .font(.custom("Inter", size: 14))
            // .padding(10)
                .foregroundColor(isClicked ? .white : (isAvailable ? .black : Color.mygreen.opacity(0.2)))
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(isClicked ? Color.mygreen : Color.mygreen.opacity(0.3), lineWidth: 1.5)
                        .frame(width: 120, height: 40)
                        .background(isClicked ? Color.mygreen : Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                )
        }
    }
}

struct Time_Baker_Previews: PreviewProvider {
    static var previews: some View {
        Time_Baker(time: "02:00 PM", isClicked: false, isAvailable: true)
    }
}
