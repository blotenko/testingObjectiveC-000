//
//  testingObjectiveC_000Tests.m
//  testingObjectiveC!000Tests
//
//  Created by Blotenko on 20.01.2022.
//

#import <XCTest/XCTest.h>

@interface testingObjectiveC_000Tests : XCTestCase

@end

@implementation testingObjectiveC_000Tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

-(void)testTrue {
    XCTAssert(true,"should be true");
}

@end
