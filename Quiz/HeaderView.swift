import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        HStack {
            if vm.currentIndex > 0 {
                Button(action: {
                    withAnimation {
                        vm.currentIndex -= 1
                    }
                }, label: {
                    Image(systemName: "arrow.left")
                })
            }
            
            Spacer()
            Text("\(vm.currentIndex + 1) / \(vm.total)")
            Spacer()
            
            if vm.currentIndex < vm.total - 1 {
                Button(action: {
                    withAnimation {
                        vm.currentIndex += 1
                    }
                }, label: {
                    Image(systemName: "arrow.right")
                })
            }
            else {
                Button("Submit") {
                    vm.submitted = true
                }
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .environmentObject(ViewModel())
            .padding()
    }
}
