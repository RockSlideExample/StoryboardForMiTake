//
//  SecondViewController.h
//  StoryboardRunPCExample
//
//  Created by Rock Su on 13/5/16.
//  Copyright (c) 2013年 Rock Su. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (nonatomic, strong) NSString *nameString;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (IBAction)disMissView:(id)sender;
@end
