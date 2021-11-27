import SwiftUI

struct CardBack: View {
    var body: some View {
        CardView(background: Color.blue) {
            VStack(spacing: 5) {
                Image(systemName: "graduationcap")
                    .font(.largeTitle)
                
                Text("Tomorrow Learning School")
                    .font(.title3.bold())
            }
            .foregroundColor(.white)
        }
    }
}

struct CardBack_Previews: PreviewProvider {
    static var previews: some View {
        CardBack()
    }
}
