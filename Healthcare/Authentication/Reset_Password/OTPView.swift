import SwiftUI

struct OTPView: View {
    @State private var digit1 = ""
    @State private var digit2 = ""
    @State private var digit3 = ""
    @State private var digit4 = ""
    
    var body: some View {
        HStack{
            OTPTextField(text: $digit1)
            OTPTextField(text: $digit2)
            OTPTextField(text: $digit3)
            OTPTextField(text: $digit4)
            
        }
    }
}

struct OTPTextField: View {
    @Binding var text: String
    
    var body: some View {
        
        TextField("", text: $text)
            .font(
                Font.custom("Inter", size: 24)
                    .weight(.bold)
            )
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
            .keyboardType(.numberPad)
            .background( Rectangle()
                .foregroundColor(.clear)
                .frame(width: 64, height: 64)
                .background(.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .inset(by: 0.75)
                        .stroke(Color(red: 0.1, green: 0.6, blue: 0.56), lineWidth: 1.5)
                ))
        
        
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}

