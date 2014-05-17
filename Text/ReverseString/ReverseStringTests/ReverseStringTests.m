//
//  ReverseStringTests.m
//  ReverseStringTests
//
//  Created by Josh Branchaud on 4/28/14.
//  Copyright (c) 2014 ios-projects. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JDBReverseStringViewController.h"
#import "JDBReverseStringHelper.h"

@interface ReverseStringTests : XCTestCase

@end

@implementation ReverseStringTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testReverseString
{
    // try reversing a simple string
    NSString *originalString1 = @"race car";
    NSString *reversedString1 = @"rac ecar";
    XCTAssertEqualObjects(reversedString1, [JDBReverseStringHelper reverseString:originalString1], @"Reversed string should match.");
    
    // try reversing a single character string
    NSString *originalString2 = @"Z";
    NSString *reversedString2 = @"Z";
    XCTAssertEqualObjects(reversedString2, [JDBReverseStringHelper reverseString:originalString2], @"Reversed string should match.");
    
    // try reversing an empty string
    NSString *originalString3 = @"";
    NSString *reversedString3 = @"";
    XCTAssertEqualObjects(reversedString3, [JDBReverseStringHelper reverseString:originalString3], @"Reversed string should match.");
}

@end
