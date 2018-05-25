#import <XCTest/XCTest.h>
#import "DNValues.h"
#import "ProjectDayNight-Swift.h"

@interface StringsTests : XCTestCase
@property (nonatomic) DNValues *values;
@end

@implementation StringsTests

- (void)setUp {
    [super setUp];
    _values = [DNValues new];
}

- (void)testString1 {
    [self measureBlock:^{
        __block int count = 0;
        [_values.strings.string1 enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
            count += [line isEqualToString:@"0"] ? 0 : 1;
        }];
        printf("%d\n", count);
    }];
}
- (void)testString10 {
    [self measureBlock:^{
        __block int count = 0;
        [_values.strings.string10 enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
            count += [line isEqualToString:@"0"] ? 0 : 1;
        }];
        printf("%d\n", count);
    }];
}
- (void)testString100 {
    [self measureBlock:^{
        __block int count = 0;
        [_values.strings.string100 enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
            count += [line isEqualToString:@"0"] ? 0 : 1;
        }];
        printf("%d\n", count);
    }];
}
- (void)testString1k {
    [self measureBlock:^{
        __block int count = 0;
        [_values.strings.string1k enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
            count += [line isEqualToString:@"0"] ? 0 : 1;
        }];
        printf("%d\n", count);
    }];
}
- (void)testString10k {
    [self measureBlock:^{
        __block int count = 0;
        [_values.strings.string10k enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
            count += [line isEqualToString:@"0"] ? 0 : 1;
        }];
        printf("%d\n", count);
    }];
}
- (void)testString100k {
    [self measureBlock:^{
        __block int count = 0;
        [_values.strings.string100k enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
            count += [line isEqualToString:@"0"] ? 0 : 1;
        }];
        printf("%d\n", count);
    }];
}
- (void)testString1m {
    [self measureBlock:^{
        __block int count = 0;
        [_values.strings.string1m enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
            count += [line isEqualToString:@"0"] ? 0 : 1;
        }];
        printf("%d\n", count);
    }];
}

@end
