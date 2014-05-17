//
//  JDBReverseStringViewController.m
//  ReverseString
//
//  Created by Josh Branchaud on 4/28/14.
//  Copyright (c) 2014 ios-projects. All rights reserved.
//

#import "JDBReverseStringViewController.h"
#import "JDBReverseStringHelper.h"

@interface JDBReverseStringViewController ()

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

- (IBAction)handleButtonClick:(id)sender {
    NSString *originalString = self.originalStringTextField.text;
    self.reversedStringLabel.text = [JDBReverseStringHelper reverseString:originalString];
}

@end
