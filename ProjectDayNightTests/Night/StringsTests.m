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

- (void)testPerformanceExample {
    [self measureBlock:^{
        __block int count = 0;
        [_values.strings.string1k enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
            count += [line integerValue];
        }];
        printf("%d\n", count);
    }];
}

@end
