//
//  testingObjectiveC_000UITestsLaunchTests.m
//  testingObjectiveC!000UITests
//
//  Created by Blotenko on 20.01.2022.
//

#import <XCTest/XCTest.h>

@interface testingObjectiveC_000UITestsLaunchTests : XCTestCase

@end

@implementation testingObjectiveC_000UITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];
    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
