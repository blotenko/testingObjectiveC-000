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
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
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
