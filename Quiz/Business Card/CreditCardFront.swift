import SwiftUI

struct CreditCardFront: View {
    var body: some View {
        CardView(background: LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)) {
            VStack(spacing: 8) {
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                    
                    Spacer()
                    
                    Text("VISA")
                        .font(.system(size: 24).bold())
                }
                
                Spacer()
                
                Text("**** **** **** 1234")
                    .font(.system(size: 32))
                
                Spacer()
                
                HStack {
                    VStack(spacing: 5) {
                        Text("CARD HOLDER")
                            .foregroundColor(.gray)
                        
                        Text("JOHN SMITH")
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 5) {
                        Text("EXPIRES")
                            .foregroundColor(.gray)
                        
                        Text("02/23")
                    }
                }
                .font(.caption.bold())
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct CreditCardFront_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardFront()
    }
}
