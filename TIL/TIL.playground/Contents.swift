import UIKit

func maxRepeating(_ sequence: String, _ word: String) -> Int {
    let max = sequence.count / word.count
    guard max > 0 else { return 0 }
    var result = 0
    for count in 1...max where sequence.contains(String(repeating: word, count: count)) {
        result = count
    }
    return result
}

maxRepeating("ababccab", "ab")
maxRepeating("ababccab", "cb")


