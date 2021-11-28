import SwiftUI

struct CreditCardBack: View {
    var body: some View {
        CardView(background: LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)) {
            VStack(alignment: .leading, spacing: 8) {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 20)
                    .padding(.top)
                
                Spacer()
                
                Text("123")
                    .frame(width: 100, height: 20)
                    .background(.white)
                    .padding()
            }
        }
    }
}

struct CreditCardBack_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardBack()
    }
}
