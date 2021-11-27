import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("\(vm.questions[vm.currentIndex].id).  \(vm.questions[vm.currentIndex].body)")
            
            ForEach(0..<vm.questions[vm.currentIndex].options.count, id: \.self) { index in
                Button(action: {
                    if vm.questions[vm.currentIndex].multiSelection {
                        vm.anwsers[vm.currentIndex][index].toggle()
                    } else {
                        for i in 0..<vm.anwsers[vm.currentIndex].count {
                            vm.anwsers[vm.currentIndex][i] = i == index ? true : false
                        }
                    }
                }, label: {
                    Label(vm.questions[vm.currentIndex].options[index],
                          systemImage: getImageName(multiSelection: vm.questions[vm.currentIndex].multiSelection,
                                                    selected: vm.anwsers[vm.currentIndex][index]))
                })
            }
        }
    }
    
    func getImageName(multiSelection: Bool, selected: Bool) -> String {
        return multiSelection ? (selected ? "xmark.square" : "square") : (selected ? "record.circle" : "circle")
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(ViewModel())
    }
}



