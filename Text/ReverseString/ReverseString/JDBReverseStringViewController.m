//
//  JDBReverseStringViewController.m
//  ReverseString
//
//  Created by Josh Branchaud on 4/28/14.
//  Copyright (c) 2014 ios-projects. All rights reserved.
//

#import "JDBReverseStringViewController.h"

@interface JDBReverseStringViewController ()

@property (weak, nonatomic) IBOutlet UITextField *originalStringTextField;
@property (weak, nonatomic) IBOutlet UIButton *reverseButton;
@property (weak, nonatomic) IBOutlet UILabel *reversedStringLabel;

@end

@implementation JDBReverseStringViewController

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

- (IBAction)handleButtonClick:(id)sender {
    NSString *originalString = self.originalStringTextField.text;
    //const char *originalCString = [self.originalStringTextField.text UTF8String];
    // NSString *reverseString = [[NSString alloc] initWithString:originalString];
    NSMutableString *reverseString = [NSMutableString stringWithString:@""];
    for (int i = originalString.length-1; i >= 0; i--) {
        unichar currentCharacter = [originalString characterAtIndex:i];
        [reverseString appendString:[NSString stringWithCharacters:&currentCharacter length:1]];
    }
    self.reversedStringLabel.text = reverseString;
}

@end
