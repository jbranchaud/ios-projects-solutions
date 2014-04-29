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
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
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
