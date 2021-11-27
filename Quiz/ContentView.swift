import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack {
            if vm.submitted {
                ScoreView()
            }
            else {
                VStack(alignment: .leading) {
                    HeaderView()
                        .padding(.bottom, 20)
                        
                    QuestionView()
                        .foregroundColor(.primary)
                    
                    Spacer()
                }
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
