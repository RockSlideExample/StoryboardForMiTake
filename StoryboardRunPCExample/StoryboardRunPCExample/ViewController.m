//
//  ViewController.m
//  StoryboardRunPCExample
//
//  Created by Rock Su on 13/5/14.
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

- (IBAction)buttonPreaaed:(id)sender {
    
//    UIStoryboard *storyboard = self.storyboard;
//    UIViewController *otherViewController = [storyboard instantiateViewControllerWithIdentifier:@"otherViewController"];
//    [self presentViewController:otherViewController animated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    SecondViewController *secondView = segue.destinationViewController;
    [secondView setValue:@"Second" forKey:@"nameString"];
    [secondView setTitle:@"Second Titile"];
}

@end
