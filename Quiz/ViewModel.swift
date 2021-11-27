import Foundation

class ViewModel: ObservableObject {
    var questions: [Question] = []
    @Published var anwsers: [[Bool]] = []
    @Published var currentIndex = 0
    @Published var submitted = false
    
    var total: Int {
        return questions.count
    }
    
    init() {
        questions = load()
        
        for question in questions {
            anwsers.append(Array(repeating: false, count: question.options.count))
        }
    }
    
    private func load() -> [Question] {
        let file = Bundle.main.url(forResource: "questions", withExtension: "json")!
        let data = try! Data(contentsOf: file)
        return try! JSONDecoder().decode([Question].self, from: data)
    }
    
    func getScore() -> Int {
        var score = 0
        
        for i in 0..<questions.count {
            if questions[i].answers == anwsers[i] {
                score += 1
            }
        }
        
        return score
    }
    
    func restart() {
        for i in 0..<anwsers.count {
            for j in 0..<anwsers[i].count {
                anwsers[i][j] = false
            }
        }
        currentIndex = 0
        submitted = false
    }
}

struct Question: Codable {
    let id: Int
    let body: String
    let options: [String]
    let answers: [Bool]
    
    var multiSelection: Bool {
        return answers.filter { $0 } .count > 1
    }
}

