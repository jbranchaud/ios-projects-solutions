//
//  JDBReverseStringHelper.m
//  ReverseString
//
//  Created by Josh Branchaud on 5/17/14.
//  Copyright (c) 2014 ios-projects. All rights reserved.
//

#import "JDBReverseStringHelper.h"

@implementation JDBReverseStringHelper

+ (NSString *)reverseString:(NSString *)originalString {
    NSMutableString *reversedString = [NSMutableString stringWithString:@""];
    for (int i = originalString.length-1; i >= 0; i--) {
        unichar currentCharacter = [originalString characterAtIndex:i];
        [reversedString appendString:[NSString stringWithCharacters:&currentCharacter length:1]];
    }
    return reversedString;
}

@end
