//
//  JDBMainViewController.h
//  WordCount
//
//  Created by Josh Branchaud on 5/18/14.
//  Copyright (c) 2014 ios-projects. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDBMainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *inputTextView;
@property (weak, nonatomic) IBOutlet UIButton *countWordsButton;
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;

@end
