//
//  PalindromeTests.m
//  PalindromeTests
//
//  Created by Josh Branchaud on 4/29/14.
//  Copyright (c) 2014 ios-projects. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JDBPalindromeViewController.h"

@interface PalindromeTests : XCTestCase

@end

@implementation PalindromeTests

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

- (void)testIsPalindrome
{
    NSString *string1 = @"racecar";
    NSString *string2 = @"hello";
    NSString *string3 = @"";
    NSString *string4 = @"Z";
    JDBPalindromeViewController *pvc = [JDBPalindromeViewController alloc];
    XCTAssertTrue([pvc isPalindrome:string1], @"Should be a palindrome");
    XCTAssertFalse([pvc isPalindrome:string2], @"Should not be a palindrome");
    //XCTAssertTrue([pvc isPalindrome:string3], @"Should be a palindrome");
    XCTAssertTrue([pvc isPalindrome:string4], @"Should be a palindrome");
}

@end
