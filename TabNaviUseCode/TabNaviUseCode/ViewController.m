//
//  ViewController.m
//  TabNaviUseCode
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
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(20, 485, 65, 44)];
    [button setTitle:@"login" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender{
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    FirstViewController *firstController = [[FirstViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *firstNavigation = [[UINavigationController alloc] initWithRootViewController:firstController];
    
    SecondViewController *secondController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *secondNavigation = [[UINavigationController alloc] initWithRootViewController:secondController];
    
    tabBarController.viewControllers = [NSArray arrayWithObjects:firstNavigation,secondNavigation,nil];
    
    [self presentViewController:tabBarController animated:YES completion:nil];
}

@end
