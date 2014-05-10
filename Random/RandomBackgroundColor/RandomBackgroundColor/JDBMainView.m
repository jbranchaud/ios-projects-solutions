//
//  JDBMainView.m
//  RandomBackgroundColor
//
//  Created by Josh Branchaud on 5/10/14.
//  Copyright (c) 2014 ios-projects. All rights reserved.
//

#import "JDBMainView.h"

@implementation JDBMainView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"We are experiencing a touches ended event!");
}

@end
