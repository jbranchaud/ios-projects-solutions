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
@property (weak, nonatomic) IBOutlet UISwitch *ignoreCapitalizationSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *ignoreWhitespaceSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *ignoreSpecialCharactersSwitch;

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
    NSString *checkString = string;
    NSLog(@"Check String: %@", checkString);
    
    // check the switches and update the string accordingly
    if (self.ignoreCapitalizationSwitch.isOn) {
        checkString = [checkString lowercaseString];
    }
    if (self.ignoreWhitespaceSwitch.isOn) {
        checkString = [self removeWhitespace:checkString];
    }
    if (self.ignoreSpecialCharactersSwitch.isOn) {
        checkString = [self removeSpecialCharacters:checkString];
    }
    
    int stringLength = checkString.length;
    // if it is an empty string, it is vacuously a palindrome, return true
    if (stringLength == 0) {
        return true;
    }
    
    BOOL result = true;
    for (int i = 0; i < stringLength / 2 + 1; i++) {
        unichar leftChar = [checkString characterAtIndex:i];
        unichar rightChar = [checkString characterAtIndex:stringLength - i - 1];
        if (leftChar != rightChar) {
            result = false;
            break;
        }
    }
    return result;
}

// remove any whitespace that is within a string (not just spaces)
- (NSString *)removeWhitespace:(NSString *)string {
    // Thanks --> http://stackoverflow.com/questions/7628470/remove-all-whitespace-from-nsstring
    NSArray *words = [string componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *noWhitespaceString = [words componentsJoinedByString:@""];
    return noWhitespaceString;
}

- (NSString *)removeSpecialCharacters:(NSString *)string {
    NSArray *words = [string componentsSeparatedByCharactersInSet:[[NSCharacterSet alphanumericCharacterSet] invertedSet]];
    NSString *noSpecialCharacterString = [words componentsJoinedByString:@""];
    return noSpecialCharacterString;
}

// handleButtonClick is invoked when the checkPalindromeButton is clicked. It
// responds to a click by grabbing the input from the palindromeTextField,
// checking whether it is a palindrome, and then updating the
// validPalindromeLabel accordingly.
- (IBAction)handleButtonClick:(id)sender {
    BOOL isPalindrome = [self isPalindrome:self.palindromeTextField.text];
    if (isPalindrome) {
        self.validPalindromeLabel.text = @"Yep, it's a palindrome.";
    }
    else {
        self.validPalindromeLabel.text = @"Nope, it's not a palindrome.";
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}


@end
