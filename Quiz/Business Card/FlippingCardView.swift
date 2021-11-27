import SwiftUI

struct FlippingCardView: View {
    @State var flipped = false
    private let axis: (x: CGFloat, y: CGFloat, z: CGFloat) = (x: 0.0, y: 1.0, z: 0.0)
    
    var body: some View {
        ZStack {
            CardFront()
                .opacity(flipped ? 0 : 1)
            
            CardBack()
                .opacity(flipped ? 1 : 0)
                .rotation3DEffect(Angle(degrees: 180), axis: axis)
        }
        .rotation3DEffect(Angle(degrees: flipped ? 180 : 0), axis: axis)
        .onTapGesture {
            withAnimation(.linear(duration: 0.5)) {
                flipped.toggle()
            }
        }
    }
}

struct FlippingCardView_Previews: PreviewProvider {
    static var previews: some View {
        FlippingCardView()
    }
}
