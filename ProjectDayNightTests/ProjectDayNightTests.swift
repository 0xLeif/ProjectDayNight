import XCTest
@testable import ProjectDayNightTests

class ProjectDayNightTests: XCTestCase {
    let values = DNValues()
    
    func testFor1() {
        measure {
            var count = 0
            for _ in self.values.arrays.array1 {
                count += 5
            }
            print(count)
        }
    }
    func testFor10() {
        measure {
            var count = 0
            for _ in self.values.arrays.array10 {
                count += 5
            }
            print(count)
        }
    }
    func testFor100() {
        measure {
            var count = 0
            for _ in self.values.arrays.array100 {
                count += 5
            }
            print(count)
        }
    }
    func testFor1000() {
        measure {
            var count = 0
            for _ in self.values.arrays.array1k {
                count += 5
            }
            print(count)
        }
    }
    func testFor10k() {
        measure {
            var count = 0
            for _ in self.values.arrays.array10k {
                count += 5
            }
            print(count)
        }
    }
    func testFor100k() {
        measure {
            var count = 0
            for _ in self.values.arrays.array100k {
                count += 5
            }
            print(count)
        }
    }
    func testFor1m() {
        measure {
            var count = 0
            for _ in self.values.arrays.array1m {
                count += 5
            }
            print(count)
        }
    }
    
    func testForEach1() {
        measure {
            var count = 0
            self.values.arrays.array1.forEach{ _ in count += 5 }
            print("swift: \(count)" )
        }
    }
    func testForEach10() {
        measure {
            var count = 0
            self.values.arrays.array10.forEach{ _ in count += 5 }
            print("swift: \(count)" )
        }
    }
    func testForEach100() {
        measure {
            var count = 0
            self.values.arrays.array100.forEach{ _ in count += 5 }
            print("swift: \(count)" )
        }
    }
    func testForEach1000() {
        measure {
            var count = 0
            self.values.arrays.array1k.forEach{ _ in count += 5 }
            print("swift: \(count)" )
        }
    }
    func testForEach10k() {
        measure {
            var count = 0
            self.values.arrays.array10k.forEach{ _ in count += 5 }
            print("swift: \(count)" )
        }
    }
    func testForEach100k() {
        measure {
            var count = 0
            self.values.arrays.array100k.forEach{ _ in count += 5 }
            print("swift: \(count)" )
        }
    }
    func testForEach1m() {
        measure {
            var count = 0
            self.values.arrays.array1m.forEach{ _ in count += 5 }
            print("swift: \(count)" )
        }
    }
    
    func testFilterOdds() {
        measure {
            self.values.arrays.array10k.filter{ $0 % 2 == 0 }
        }
    }
}
