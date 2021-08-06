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

extension CGPoint: CustomStringConvertible {
    public var description: String {
        return "Custom desciption : (\(x), \(y))"
    }
}

struct TIL20210806 {
    init() {
        let a = CGPoint(x: 10, y: 12)
        let b = CGPoint(x: 111, y: 78)
        print(a)
        print(b)
        
        let v = UIScrollView()
        v.backgroundColor = .red
        if #available(iOS 11.0, *) {
            // TODO : 자세히 공부 해야 함
            v.contentInsetAdjustmentBehavior = .never
        }
        v.showsVerticalScrollIndicator = false
    }
}

TIL20210806()

