import SwiftUI

struct ScoreView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Your score is \(vm.getScore()) / \(vm.total)")
                .font(.title)
                
            Button("Restart") {
                vm.restart()
            }
            .font(.title2)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
            .environmentObject(ViewModel())
    }
}
