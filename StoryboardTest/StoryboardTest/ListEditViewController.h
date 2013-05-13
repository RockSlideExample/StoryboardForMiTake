//
//  ListEditViewController.h
//  StoryboardTest
//
//  Created by Rock Su on 13/5/13.
//  Copyright (c) 2013年 Rock Su. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListEditViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *editText;
@property (copy, nonatomic) NSDictionary *selection;
@property (weak, nonatomic) id preViewController;

@end
