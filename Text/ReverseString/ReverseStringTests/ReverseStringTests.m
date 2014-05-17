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
    
}

- (void)testReverseSimpleString
{
    // try reversing a simple string
    NSString *originalString = @"race car";
    NSString *reversedString = @"rac ecar";
    XCTAssertEqualObjects(reversedString, [JDBReverseStringHelper reverseString:originalString], @"Reversed string should match.");
}

- (void)testReverseSingleCharacterString
{
    // try reversing a single character string
    NSString *originalString = @"Z";
    NSString *reversedString = @"Z";
    XCTAssertEqualObjects(reversedString, [JDBReverseStringHelper reverseString:originalString], @"Reversed string should match.");
}

- (void)testReverseEmptyString
{
    // try reversing an empty string
    NSString *originalString = @"";
    NSString *reversedString = @"";
    XCTAssertEqualObjects(reversedString, [JDBReverseStringHelper reverseString:originalString], @"Reversed string should match.");
}

@end
