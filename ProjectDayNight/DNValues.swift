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

@objc class TestingStrings: NSObject {
    //MARK: Strings 1 - 1,000,000
    /// Returns an String with 1 value
    public var string1: String {
        return "0"
    }
    /// Returns an String with 10 value
    public var string10: String {
        return TestingArray().array10.map{ "\($0 % 2 == 0 ? 0 : 1)" }.reduce("",+)
    }
    /// Returns an String with 100 value
    public var string100: String {
        return TestingArray().array100.map{ "\($0 % 2 == 0 ? 0 : 1)" }.reduce("",+)
    }
    /// Returns an String with 1000 value
    public var string1k: String {
        return TestingArray().array1k.map{ "\($0 % 2 == 0 ? 0 : 1)" }.reduce("",+)
    }
    /// Returns an String with 10,000 value
    public var string10k: String {
        return TestingArray().array10k.map{ "\($0 % 2 == 0 ? 0 : 1)" }.reduce("",+)
    }
    /// Returns an String with 100,000 value
    public var string100k: String {
        return TestingArray().array100k.map{ "\($0 % 2 == 0 ? 0 : 1)" }.reduce("",+)
    }
    /// Returns an String with 1,000,000 value
    public var string1m: String {
        return TestingArray().array1m.map{ "\($0 % 2 == 0 ? 0 : 1)" }.reduce("",+)
    }
}

public extension DNValues {
    internal var arrays: TestingArray {
        return TestingArray()
    }
    internal var strings: TestingStrings {
        return TestingStrings()
    }
}
