//
//  ViewController.m
//  StoryboardWithXib
//
//  Created by Rock Su on 13/5/13.
//  Copyright (c) 2013年 Rock Su. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *initialHelpView = [mainStoryboard instantiateInitialViewController];
    initialHelpView.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:initialHelpView animated:YES completion:nil];
    
//    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
//    UIViewController *initialHelpView = [mainStoryboard instantiateInitialViewController];
//    initialHelpView.modalPresentationStyle = UIModalPresentationFormSheet;
//    [self presentModalViewController:initialHelpView animated:YES];//iOS 2_0, 6_0
}
@end
