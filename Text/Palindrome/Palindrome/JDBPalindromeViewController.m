//
//  JDBPalindromeViewController.m
//  Palindrome
//
//  Created by Josh Branchaud on 4/29/14.
//  Copyright (c) 2014 ios-projects. All rights reserved.
//

#import "JDBPalindromeViewController.h"

@interface JDBPalindromeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *palindromeTextField;
@property (weak, nonatomic) IBOutlet UIButton *checkPalindromeButton;
@property (weak, nonatomic) IBOutlet UILabel *validPalindromeLabel;

@end

@implementation JDBPalindromeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* 
 * isPalindrome is a helper method that will check whether the given string is
 * a palindrome or not. It returns a boolean of true if the given string is a 
 * palindrome, false otherwise.
 */
- (BOOL)isPalindrome:(NSString *)string {
    int stringLength = string.length;
    BOOL result = true;
    for (int i = 0; i < stringLength / 2 + 1; i++) {
        unichar leftChar = [string characterAtIndex:i];
        unichar rightChar = [string characterAtIndex:stringLength - i - 1];
        if (leftChar != rightChar) {
            result = false;
            break;
        }
    }
    return result;
}

- (IBAction)handleButtonClick:(id)sender {
}

@end
