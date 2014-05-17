//
//  JDBReverseStringViewController.h
//  ReverseString
//
//  Created by Josh Branchaud on 4/28/14.
//  Copyright (c) 2014 ios-projects. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDBReverseStringViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *originalStringTextField;
@property (weak, nonatomic) IBOutlet UIButton *reverseButton;
@property (weak, nonatomic) IBOutlet UILabel *reversedStringLabel;

@end
