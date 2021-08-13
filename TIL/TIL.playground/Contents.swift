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

struct SpeedOptions: OptionSet {
    let rawValue: Int

    static let verySlow = Self(rawValue: 1 << 0)
    static let slow = Self(rawValue: 1 << 1)
    static let normal = Self(rawValue: 1 << 2)
    static let fast = Self(rawValue: 1 << 3)
    static let veryFast = Self(rawValue: 1 << 4)

    static let fastes: Self = [.fast, .veryFast]
    static let all: Self = [.verySlow, .slow, .normal, .fast, .veryFast]
    static var check: Self = [.verySlow, .slow]
}

struct TIL20210813 {
    init() {
        print(SpeedOptions.all)
        SpeedOptions.fastes.contains(.slow)
        SpeedOptions.fastes.contains(.veryFast)

        var options = [SpeedOptions.verySlow]
        options.append(.veryFast)
        // 교집합을 찾아 낸다.
        var replaced = SpeedOptions.check.update(with: .slow)
        print(replaced == .slow)

        replaced = SpeedOptions.check.update(with: .fast)
        print(replaced ?? "is nil")
    }
}

TIL20210813()

