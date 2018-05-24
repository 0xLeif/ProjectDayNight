#import <XCTest/XCTest.h>
#import "DNValues.h"
#import "ProjectDayNight-Swift.h"

@interface ArraysTests : XCTestCase
@property (nonatomic) DNValues *values;
@end

@implementation ArraysTests

- (void)setUp {
    [super setUp];
    _values = [DNValues new];
}


- (void)testEnumerateObjects1 {
    [self measureBlock:^{
        __block int count = 0;
        [_values.arrays.array1 enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            count += 5;
        }];
        printf("obj-c: %d\n", count);
    }];
}
- (void)testEnumerateObjects10 {
    [self measureBlock:^{
        __block int count = 0;
        [_values.arrays.array10 enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            count += 5;
        }];
        printf("obj-c: %d\n", count);
    }];
}
- (void)testEnumerateObjects100 {
    [self measureBlock:^{
        __block int count = 0;
        [_values.arrays.array100 enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            count += 5;
        }];
        printf("obj-c: %d\n", count);
    }];
}
- (void)testEnumerateObjects1k {
    [self measureBlock:^{
        __block int count = 0;
        [_values.arrays.array1k enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            count += 5;
        }];
        printf("obj-c: %d\n", count);
    }];
}
- (void)testEnumerateObjects10k {
    [self measureBlock:^{
        __block int count = 0;
        [_values.arrays.array10k enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            count += 5;
        }];
        printf("obj-c: %d\n", count);
    }];
}
- (void)testEnumerateObjects100k {
    [self measureBlock:^{
        __block int count = 0;
        [_values.arrays.array100k enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            count += 5;
        }];
        printf("obj-c: %d\n", count);
    }];
}
- (void)testEnumerateObjects1m {
    [self measureBlock:^{
        __block int count = 0;
        [_values.arrays.array1m enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            count += 5;
        }];
        printf("obj-c: %d\n", count);
    }];
}

- (void)testFilterOdds {
    [self measureBlock:^{
        [_values.arrays.array10k indexesOfObjectsPassingTest:^BOOL(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            return idx % 2 == 0;
        }];
    }];
}
@end
