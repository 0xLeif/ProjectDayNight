import XCTest

class StringsTests: XCTestCase {
    let values = DNValues().strings
    
    func testString1() {
        measure {
            var count = 0
            self.values.string1.forEach{ count += Int("\($0)")! }
            print(count)
        }
    }
    func testString10() {
        measure {
            var count = 0
            self.values.string10.forEach{ count += Int("\($0)")! }
            print(count)
        }
    }
    func testString100() {
        measure {
            var count = 0
            self.values.string100.forEach{ count += Int("\($0)")! }
            print(count)
        }
    }
    func testString1k() {
        measure {
            var count = 0
            self.values.string1k.forEach{ count += Int("\($0)")! }
            print(count)
        }
    }
    func testString10k() {
        measure {
            var count = 0
            self.values.string10k.forEach{ count += Int("\($0)")! }
            print(count)
        }
    }
    func testString100k() {
        measure {
            var count = 0
            self.values.string100k.forEach{ count += Int("\($0)")! }
            print(count)
        }
    }
    func testString1m() {
        measure {
            var count = 0
            self.values.string1m.forEach{ count += Int("\($0)")! }
            print(count)
        }
    }
    
}
