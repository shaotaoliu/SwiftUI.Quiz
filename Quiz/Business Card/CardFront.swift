import SwiftUI

struct CardFront: View {
    var body: some View {
        CardView(background: .white) {
            VStack(spacing: 8) {
                HStack {
                    Image(systemName: "graduationcap")
                        .font(.title3)
                    
                    Text("Tomorrow Learning School")
                        .font(.headline)
                }
                .foregroundColor(.blue)
                
                Text("John Smith")
                    .font(.title.bold())
                
                Text("Project Manager")
                    .font(.subheadline)
                    .padding(.bottom, 35)
                
                HStack(spacing: 30) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Phone: ") + Text("626-890-1234")
                        Text("Email: ") + Text("jsmith@tomorrow.com")
                    }
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("200 Park Ave.")
                        Text("Fresno, CA 92001")
                    }
                }
                .font(.system(size: 10))
            }
        }
    }
}

struct CardFront_Previews: PreviewProvider {
    static var previews: some View {
        CardFront()
    }
}
