import Foundation

@objc class TestingArray: NSObject {
    //MARK: Arrays 1 - 1,000,000
    /// Returns an array with 1 value
    public var array1: [Int] {
        return [0]
    }
    /// Returns an array with 10 value
    public var array10: [Int] {
        return (0..<10).map{ Int($0) }
    }
    /// Returns an array with 100 value
    public var array100: [Int] {
        return (0..<100).map{ Int($0) }
    }
    /// Returns an array with 1000 value
    public var array1k: [Int] {
        return (0..<1000).map{ Int($0) }
    }
    /// Returns an array with 10,000 value
    @objc public var array10k: [Int] {
        return (0..<10_000).map{ Int($0) }
    }
    /// Returns an array with 100,000 value
    public var array100k: [Int] {
        return (0..<100_000).map{ Int($0) }
    }
    /// Returns an array with 1,000,000 value
    public var array1m: [Int] {
        return (0..<1_000_000).map{ Int($0) }
    }
}

public extension DNValues {
    internal var arrays: TestingArray {
        return TestingArray()
    }
}
