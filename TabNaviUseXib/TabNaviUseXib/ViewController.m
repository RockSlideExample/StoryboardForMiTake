//
//  ViewController.m
//  TabNaviUseXib
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

- (IBAction)buttonPressed:(UIButton *)sender {
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    FirstViewController *firstController = [[FirstViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *firstNavigation = [[UINavigationController alloc] initWithRootViewController:firstController];
    
    SecondViewController *secondController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *secondNavigation = [[UINavigationController alloc] initWithRootViewController:secondController];
    
    tabBarController.viewControllers = [NSArray arrayWithObjects:firstNavigation,secondNavigation,nil];
    
    [self presentViewController:tabBarController animated:YES completion:nil];
}
@end
