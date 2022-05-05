//
//  testingObjectiveC_000UITests.m
//  testingObjectiveC!000UITests
//
//  Created by Blotenko on 20.01.2022.
//

#import <XCTest/XCTest.h>

@interface testingObjectiveC_000UITests : XCTestCase

@end

@implementation testingObjectiveC_000UITests

- (void)setUp {
   
    self.continueAfterFailure = NO;

}

- (void)tearDown {
    
}

- (void)testExample {
   
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];


}

- (void)testLaunchPerformance {
    if (@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *)) {
        [self measureWithMetrics:@[[[XCTApplicationLaunchMetric alloc] init]] block:^{
            [[[XCUIApplication alloc] init] launch];
        }];
    }
}

@end
