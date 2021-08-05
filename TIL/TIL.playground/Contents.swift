import UIKit

struct TIL20210804 {
    func maxRepeating(_ sequence: String, _ word: String) -> Int {
        let max = sequence.count / word.count
        guard max > 0 else { return 0 }
        var result = 0
        for count in 1...max where sequence.contains(String(repeating: word, count: count)) {
            result = count
        }
        return result
    }
    
    init() {
        maxRepeating("ababccab", "ab")
        maxRepeating("ababccab", "cb")
    }
}

TIL20210804()

struct TIL20210805 {
    func execute(text: String) -> Result<Int, Error> {
        guard let index = Int(text) else {
            return .failure(NSError(domain: "xxx", code: -4000, userInfo: nil))
        }
        return .success(index)
    }
    
    init() {
        execute(text: "abc10")
        execute(text: "1004")
    }
}

TIL20210805()

