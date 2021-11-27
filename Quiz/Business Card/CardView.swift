import SwiftUI

struct CardView<Content: View, S: ShapeStyle>: View {
    let background: S
    @ViewBuilder let content: () -> Content
    
    var body: some View {
        content()
            .frame(width: UIScreen.main.bounds.width - 40,
                   height: (UIScreen.main.bounds.width - 40) * 0.618)
            .background(background)
            .cornerRadius(15)
            .shadow(radius: 10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(background: Color.blue) {
            Text("Hello World")
                .font(.title)
                .foregroundColor(.white)
        }
    }
}
